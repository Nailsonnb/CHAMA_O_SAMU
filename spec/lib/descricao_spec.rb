require 'spec_helper'
require 'Descricao'

describe Conteudo do
    caracteres_permitidos = /[a-zA-Z0-9]/
    email_valido = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    comentario_valido = /([^"]*)/
    
    descricao_instance = Conteudo.new
    
    it "is a instance of a Comentario?" do
        expect(descricao_instance).to be_an_instance_of(Conteudo)
    end
    
    it "has an valid email?" do
        expect(descricao_instance.email).not_to be_empty
        expect(descricao_instance.email).to match(email_valido)
        expect(descricao_instance.email).to be_an_instance_of(String)
        expect(descricao_instance.email).to match(caracteres_permitidos)
    end
    
    it "has an valid comentario?" do
        expect(descricao_instance.comentario).not_to be_empty
        expect(descricao_instance.comentario).to match(comentario_valido)
        expect(descricao_instance.comentario).to be_an_instance_of(String)
    end
end