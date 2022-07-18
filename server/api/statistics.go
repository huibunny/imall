package api

import (
	"bunnymall/constant"
	"bunnymall/response"
	"bunnymall/service"

	"github.com/gin-gonic/gin"
)

type WebStatistics struct {
	service.WebStatisticsService
}

func GetWebStatistics() *WebStatistics {
	return &WebStatistics{}
}

func (s *WebStatistics) GetOrderData(context *gin.Context) {
	orderData := s.OrderData()
	response.Success(constant.Selected, orderData, context)
}

func (s *WebStatistics) GetWeekData(context *gin.Context) {
	weekData := s.WeekData()
	response.Success(constant.Selected, weekData, context)
}
