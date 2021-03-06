# encoding: utf-8
class SpeciesController < ApplicationController
	def new
		@specie = Specie.new
	end

	def create
		@specie = Specie.new(params[:specie])
		if @specie.save
			redirect_to new_species_path, notice: "Registro guardado con exito."
		else
			render :new
		end
	end

	def show
		@specie = Specie.find(params[:id])
	end

	def trees
		@species = Specie.where(specie_type: 'Arbol').order('name asc')
	end

	def flowers
		@species = Specie.where(specie_type: 'Flor').order('name asc')
	end

	def vegetables
		@species = Specie.where(specie_type: 'Hortaliza').order('name asc')
	end
end
