package initialize

import (
	"bunnymall/global"

	"github.com/go-redis/redis/v8"
)

func Redis() {
	r := global.Config.Redis
	rdb := redis.NewClient(&redis.Options{
		Addr:     r.Addr,
		Password: r.Password, // password
		DB:       r.Db,       // use default DB
	})
	global.Rdb = rdb
}
