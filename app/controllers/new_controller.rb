class NewController < ApplicationController


	def index 
		@student  = Student.all
		#view

	end


	def show 

		@student = Student.find(params[:id])
	end


	def edit

	end 


	def create 
		@student = Student.new

		@student.name = params[:student][:name]
		@student.course = params[:student][:course]
		@student.id_num = params[:student][:id_num]
		@student.prelim_exam = params[:student][:prelim_exam]
		@student.midterm_exam = params[:student][:midterm_exam]
		@student.prefinal_exam= params[:student][:prefinal_exam]
		@student.final_exam = params[:student][:final_exam]
		
		@student.save

		redirect_to "/new/#{@student.id}"
	end


	def update

		@student = Student.new

		@student.name = params[:student][:name]
		@student.course = params[:student][:course]
		@student.id_num = params[:student][:id_num]
		@student.prelim_exam = params[:student][:prelim_exam]
		@student.midterm_exam = params[:student][:midterm_exam]
		@student.prefinal_exam= params[:student][:prefinal_exam]
		@student.final_exam = params[:student][:final_exam]
		

	end 


	def destroy 
		@student = Student.find(params[:id])




end
