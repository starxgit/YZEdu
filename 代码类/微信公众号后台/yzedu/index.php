<?php
header("Content-Type:text;charset=utf-8");
define("TOKEN", "weixin");

$wechatObj = new wechatCallbackapiTest();


if (isset($_GET['echostr'])) {
    $wechatObj->valid();
}else{
    // $m=new Menu();
    // $m->deleteMenu();
    // $m->createMenu();
    $wechatObj->responseMsg();
}

class wechatCallbackapiTest
{
    public function __set($name,$value){ 
        $this->$name = $value; 
    } 

    public function __get($name){ 
        return $this->$name; 
    }

    public function valid()
    {
        $echoStr = $_GET["echostr"];
        if($this->checkSignature()){
            header('content-type:text');
            echo $echoStr;
            exit;
        }
    }

    private function checkSignature()
    {
        $signature = $_GET["signature"];
        $timestamp = $_GET["timestamp"];
        $nonce = $_GET["nonce"];

        $token = TOKEN;
        $tmpArr = array($token, $timestamp, $nonce);
        sort($tmpArr, SORT_STRING);
        $tmpStr = implode( $tmpArr );
        $tmpStr = sha1( $tmpStr );

        if( $tmpStr == $signature ){
            return true;
        }else{
            return false;
        }
    }

    public function responseMsg()
    {
        $postStr = $GLOBALS["HTTP_RAW_POST_DATA"];

        if (!empty($postStr)){
            $postObj = simplexml_load_string($postStr, 'SimpleXMLElement', LIBXML_NOCDATA);
            $RX_TYPE=trim($postObj->MsgType);

            switch ($RX_TYPE) {
                case "text":
                    $this->receiveText($postObj);
                    break;
                case "image":
                    $this->receiveImage($postObj);
                    break;
                case "voice":
                    $this->receiveVoice($postObj);
                    break;
                case "video":
                    $this->receiveVideo($postObj);
                    break;
                case "location":
                    $this->receiveLocation($postObj);
                    break;
                case "link":
                    $this->receiveLink($postObj);
                    break;
                case "event":
                    $this->doEvent($postObj);
                    break;
                default:
                    echo "Unknow Msg Type:".RX_TYPE;
                    break;
            }
        }else{
            echo "";
            exit;
        }
    }

    //接收的是文本信息
    private function receiveText($postObj){
        $fromUsername = $postObj->FromUserName;
        $toUsername = $postObj->ToUserName;
        $keyword = trim($postObj->Content);
        if(!empty( $keyword )){
            //关键字是图文时
            if(strstr($keyword,"图文")){
                $content=array();
                $content[]=array("Title"=>"单图文标题","Description"=>"单图文内容","PicUrl"=>"http://118.89.29.44:8080/XiankeM/cloud/showImg?myfile=html5.png","Url"=>"http://mp.weixin.qq.com/s/sL6mWa8xHXuyS91IGQRO8w");
                $this->sendTuWen($postObj,$content);
            }elseif(strstr($keyword,"myopenid")){
                 $content=$fromUsername;
                 $this->sendText($postObj, $content);
            }
            //其他文本关键字
            else{
                $this->sendText($postObj, $keyword);
            }
        //内容为空   
        }else{
            echo "Input something...";
        }
    }

    //接收图片消息
    private function receiveImage($postObj){
        $content="您发送的是图片，地址为".$postObj->PicUrl;
        $this->sendText($postObj,$content);
    }

    //接收语音消息
    private function receiveVoice($postObj){
        $content="您发送的是语音，媒体ID为".$postObj->MediaId;
        $this->sendText($postObj,$content);
    }

    //接收视频消息
    private function receiveVideo($postObj){
        $content="您发送的是视频，媒体ID为".$postObj->MediaId;
        $this->sendText($postObj,$content);
    }

    //接受位置消息
    private function receiveLocation($postObj){
        $content="您发送的是位置，维度为：".$postObj->Location_X."；经度为：".$postObj->Location_Y."；缩放级别为".$postObj->Scale."；位置为：".$postObj->Label;
        $this->sendText($postObj,$content);
    }

    //接受链接消息
    private function receiveLink($postObj){
        $content="您发送的是链接，标题为：".$postObj->Title."内容为：".$postObj->Description."；链接地址为：".$postObj->Url;
        $this->sendText($postObj,$content);
    }

    //处理事件
    private function doEvent($postObj){
        
        switch ($postObj->Event) {
            case 'subscribe':
                $content = '欢迎关注云智教育平台微信公众号！我们将会为您提供最佳的资源和服务';
                $this->sendText($postObj,$content);
                break;
            case 'CLICK':
                switch ($postObj->EventKey) {
                   
                    
                    default:
                        # code...
                        break;
                }
                break;

            default:
                # code...
                break;
        }

    }

    /*回复文本*/
    private function sendText($postObj,$keyword){
    	$textTpl = "<xml>
                        <ToUserName><![CDATA[%s]]></ToUserName>
                        <FromUserName><![CDATA[%s]]></FromUserName>
                        <CreateTime>%s</CreateTime>
                        <MsgType><![CDATA[%s]]></MsgType>
                        <Content><![CDATA[%s]]></Content>
                        <FuncFlag>0</FuncFlag>
                    </xml>";
        $msgType = "text";
        $contentStr = $keyword;
        $resultStr = sprintf($textTpl, $postObj->FromUserName, $postObj->ToUserName, time(), $msgType, $contentStr);
        echo $resultStr;
    }

    /*回复图文信息*/
    public function sendTuWen($postObj,$newsArray){
    	$result="11";
    	if(!is_array($newsArray)){
    		return;
    	}
    	$itemTpl = "<item>
                    <Title><![CDATA[%s]]></Title> 
                    <Description><![CDATA[%s]]></Description>
                    <PicUrl><![CDATA[%s]]></PicUrl>
                    <Url><![CDATA[%s]]></Url>
                    </item>";
        $item_str="";
        foreach ($newsArray as $item) {
        	$item_str .=sprintf($itemTpl,$item['Title'],$item['Description'],$item['PicUrl'],$item['Url']);
        }
    	$xmlTpl = "<xml>
                    <ToUserName><![CDATA[%s]]></ToUserName>
                    <FromUserName><![CDATA[%s]]></FromUserName>
                    <CreateTime>%s</CreateTime>
                    <MsgType><![CDATA[news]]></MsgType>
                    <ArticleCount>%s</ArticleCount>
                    <Articles> $item_str </Articles>
                    <FuncFlag>0</FuncFlag>
                    </xml>";
        $result=sprintf($xmlTpl,$postObj->FromUserName,$postObj->ToUserName,time(),count($newsArray));
        echo $result;
    }


}
?>