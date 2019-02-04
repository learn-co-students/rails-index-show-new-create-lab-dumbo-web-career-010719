class CouponsController < ApplicationController

	def index
		@coupons = Coupon.all
	end

	def new
		# @new = Coupon.new
		# @coupon = Coupon.find(params[:id])
	end

	def show
		# byebug
		@coupon = Coupon.find(params[:id])
	end

	def create
		@coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
		# byebug
		redirect_to "/coupons/#{@coupon.id}"
	end

end