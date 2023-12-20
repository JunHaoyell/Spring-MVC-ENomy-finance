package com.enomy;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
public class CurrencyConverterController {
    private static final Map<String, Float> exchangeRates = new HashMap<>();
    private static final Map<String, String> currencySymbols = new HashMap<>();

    static {
        // Initialize exchange rates (example values)
        exchangeRates.put("USD", 1.0f);
        exchangeRates.put("GBP", 0.72f);
        exchangeRates.put("EUR", 0.82f);
        exchangeRates.put("BRL", 5.26f);
        exchangeRates.put("JPY", 109.22f);
        exchangeRates.put("TRY", 8.73f);

        // Initialize currency symbols
        currencySymbols.put("USD", "$");
        currencySymbols.put("GBP", "£");
        currencySymbols.put("EUR", "€");
        currencySymbols.put("BRL", "R$");
        currencySymbols.put("JPY", "¥");
        currencySymbols.put("TRY", "₺");
    }

    @GetMapping("/converter")
    public String index() {
        return "currency";
    }

    @PostMapping("/converter")
    public String convertCurrency(@RequestParam String fromCurrency, @RequestParam String toCurrency,
                                  @RequestParam(required = false) String amount, Model model) {
        if (amount == null || amount.isEmpty()) {
            model.addAttribute("error", "Please enter an amount to convert.");
            return "currency";
        }

        float amountValue;
        try {
            amountValue = Float.parseFloat(amount);
        } catch (NumberFormatException e) {
            model.addAttribute("error", "Invalid amount entered. Please enter a numeric value.");
            return "currency";
        }

        // Check transaction limitations
        if (amountValue < 300 || amountValue > 5000) {
            model.addAttribute("error", "Transaction amount should be between 300 and 5000.");
            return "currency";
        }

        float fromRate = exchangeRates.get(fromCurrency);
        float toRate = exchangeRates.get(toCurrency);

        float result = (amountValue / fromRate) * toRate;

        // Calculate transaction fee based on the initial currency amount
        float fee;
        if (amountValue <= 500) {
            fee = amountValue * 0.035f;
        } else if (amountValue <= 1500) {
            fee = amountValue * 0.027f;
        } else if (amountValue <= 2500) {
            fee = amountValue * 0.02f;
        } else {
            fee = amountValue * 0.015f;
        }

        float convertedAmount = result - fee;

        String fromSymbol = currencySymbols.get(fromCurrency);
        String toSymbol = currencySymbols.get(toCurrency);

        String resultWithSymbol = toSymbol + " " + convertedAmount;

        model.addAttribute("result1", resultWithSymbol);
        model.addAttribute("fee", "Fee: " + fee);
        return "currency";
    }
}