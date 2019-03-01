<?php
namespace app\index\model;
use think\Model;
use traits\model\SoftDelete;
class User extends Model
{
    use SoftDelete;
    protected $deleteTime = 'delete_time';

    // 保存自动完成列表
    protected $auto = [
        'delete_time' => NULL,
        'is_delete' => NULL, ]; //1:允许删除 null:禁止删除



}