void main() {
    final desserts = ['cookies', 'cupcakes', 'donuts' , 'pie'];
    desserts.remove('cookies');

    desserts.remove('cupcakes'); 
    desserts.add('ice cream');

    print(desserts);

    final modifiableList = [DateTime.now(), DateTime.now()];
    final unmodifiableList = List.unmodifiable(modifiableList);
    print(unmodifiableList);

    const peanutAllergy = true;
    const candy = [
    'Junior Mints',
    'Twizzlers',
    if (!peanutAllergy) 'Reeses',
    ];
    print(candy);

    const deserts = ['gobi', 'sahara', 'arctic'];
    var bigDeserts = [
        'ARABIAN',
        for (var desert in deserts) desert.toUpperCase(),
    ];
    print(bigDeserts);
}