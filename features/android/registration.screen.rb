class RegistrationScreen < Utils

    def initialize
    @code_field = 'txt_codigo'
    @description_field = 'txt_descricao'
    @packing_field = 'txt_unidade'
    @amount_field = 'txt_quantidade'
    @unitValue_field = 'txt_valunit'
    @lot_field = 'txt_lote'
    @save_button = 'btn_gravar_assunto'
    @decrease_stock = 'txt_qtdsaida'
    @reason = 'txt_motivo'
    @doc_ref = 'txt_referencia'
    @save_decrease = 'btn_salvar'
    end

    def register_product (code, description, packing, amount, unitValue, lot)
    type_text(@code_field, code, 5)
    type_text(@description_field, description, 5)
    type_text(@packing_field, packing, 5)
    type_text(@amount_field, amount, 5)
    type_text(@unitValue_field, unitValue, 5)
    type_text(@lot_field, lot, 5)
    click_in_element(@save_button, 5)
    end

    def decrease_product (value)
    type_text(@decrease_stock, value, 5)
    click_in_element(@save_decrease, 5)
      
    end
end