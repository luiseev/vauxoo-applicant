"""
Your module documentation here
"""


class PrimeClass(object):
    """
     Clase que contiene la implementacion del metodo is_prime
    """

    def is_prime(self, num_int):
        """
        Metodo que determina si un numero es primo
        """
        # your primes code here
        if num_int == 1:
            return False
        else:
            for a in range(2, num_int):
                if num_int % a == 0:
                    return False
        return True
