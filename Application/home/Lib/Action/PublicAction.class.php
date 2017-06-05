<?php

/**
 * Created by PhpStorm.
 * User: Notus
 * Date: 17/6/5
 * Time: 下午2:44
 */
class PublicAction extends Action
{
    public function verify(){
        import('ORG.Util.Image');
        Image::buildImageVerify();
    }
}