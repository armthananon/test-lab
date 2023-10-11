import unittest
import app


class TestMyCode(unittest.TestCase):

    def test_1(self):
        """true_when_x_is_17"""
        self.assertEqual(app.is_prime(17), 'true')

    def test_2(self):
        """false_when_x_is_36"""
        self.assertEqual(app.is_prime(36), 'false')

    def test_multiplication(self):
        """true_when_x_is_13219"""
        self.assertEqual(app.is_prime(13219), 'true')


if __name__ == '__main__':
    unittest.main()
