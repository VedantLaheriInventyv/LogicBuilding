#python program to convert rs into paisa and vice versa
def rs_to_paisa(amount_in_rs):
    return amount_in_rs * 100

def paisa_to_rs(amount_in_paisa):
    return amount_in_paisa / 100

print("1. Convert Rupees to Paisa")
print("2. Convert Paisa to Rupees")

choice = int(input("Enter your choice (1 or 2): "))

if choice == 1:
    amount_in_rs = float(input("Enter the amount in Rupees: "))
    amount_in_paisa = rs_to_paisa(amount_in_rs)
    print("{} Rupees is equal to {} Paisa".format(amount_in_rs, amount_in_paisa))
elif choice == 2:
    amount_in_paisa = float(input("Enter the amount in Paisa: "))
    amount_in_rs = paisa_to_rs(amount_in_paisa)
    print("{} Paisa is equal to {} Rupees".format(amount_in_paisa, amount_in_rs))
else:
    print("Invalid choice. Please enter 1 or 2.")
