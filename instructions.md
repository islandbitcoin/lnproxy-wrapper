# Welcome to lnproxy!

A wrapped lightning hodl invoice generator

## Usage Instructions

Open lnproxy by using the `LAUNCH UI` button.

Paste in a lightning invoice in the textform on the screen. You will be presented with another 'wrapped' lightning invoice, preventing the payer from knowing the final destination.
When an lnproxy node accepts an htlc for the wrapped invoice, it immediately pays the original invoice and uses the revealed preimage to settle the wrapped invoice. This ensures that you don't need to trust lnproxy with your payments.

Pro-Tip: Users should verify that wrapped invoices are, in fact, conditional by decoding them to ensure that the payment hash matches that of the original invoice.