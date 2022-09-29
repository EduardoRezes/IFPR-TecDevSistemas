class Client {
    String name;
    String cpf;

    /**
     * Initializer a constructor, parameterized, using {} so that the parameters are optional
     */
    Client({required this.name, this.cpf = '000.000.000-00'});
}
