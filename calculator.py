"""
Your module documentation here
"""


class CalculatorClass(object):
    """
    Clase que tiene la implementacion del metodo sum
    """

    def sum(self, num_list):
        """
        Metodo que realiza la suma de una lista de numeros
        """
        # your sum code here
        suma = 0
        for num in num_list:
            suma = suma + num

        return suma
