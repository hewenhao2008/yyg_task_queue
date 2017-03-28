<?php

$configs = [

    "is_debug" => true,
    "log_path" => "/data/logs/tasks",
    "file_path" => "/data/logs/", //存放程序生成的报表文件
    "timezone" => "Asia/Shanghai",
    "timer_interval" => 2,   // 执行任务定时器 时间间隔
    "prize"    => [
        "low_ratio"           => 0.75,
        "loose_ratio"         => 10,
        "high_ratio"          => 4,
        "kill_ratio"          => 0.1,
        "rt_magic_prize"      => 888888,
        "period_time"         => 30,  // 天
        "period_money_top"    => 100,  // 天
        // 必须是合法的php表达式
        "user_roi_expression" => "if(user_roi > 1.5 ||  (0.79 < user_roi && user_roi < 1.15)) {return true;} else { return false;}",
        "user_period_consume_key_scheme" => "malaysia:user_period_consume:sorted_set#{uid}",
        "nper_prize_key_scheme" => "malaysia:nper_prize:sorted_set#{nid}",
        "user_life_win_key_scheme" => "malaysia:user_life_win:set#{uid}",
        //"user_life_pay_key_scheme" => "malaysia:user_life_pay#{uid}",
        "already_consume_user_key_scheme" => "malaysia:already_consume_user",
        "robot_set" => "malaysia:robot_set",
        "goods_open_result" => "malaysia:goods_open_result:set#{gid}",  //存储商品相关的期号 关联一个hash 结构
        "goods_open_result_related_info" => "malaysia:goods_open_result_related:hash#{nid}",  // nid  nper_id
    ],
    "services" => [
        "mysql" => [
            "host"     => "127.0.0.1",
            "port"     => 3306,
            "user"     => "root",
            "password" => "123456",
            "dbname"   => "yyg",
            "charset"  => "utf8",
        ],
        "redis" => [
            "host"   => "127.0.0.1",
            "port"   => 6379,
        ],
        "email" => [
            "host"     => "email-smtp.us-east-1.amazonaws.com",
            "port"     => 587,
            "auth"     => true,
            "username" => "AKIAJDAMWWQWXQQBUJKQ",
            "password" => "AiGEbjJx7gqoyw38kQg8AKgBiylQvXgpQna2qaZlaxmK",
            "info"     => [
                "malaysia" => [
                    "sender"   => "hello@1rmhunt.com",
                    "receiver" => "hello@1rmhunt.com",
                ],
                "turkey"   => [
                    "sender"   => "destek@turnavi.com",
                    "receiver" => "destek@turnavi.com",
                ],
                "russia"   => [
                    "sender"   => "",
                    "receiver" => "",
                ],
            ],
        ],
    ],
];

