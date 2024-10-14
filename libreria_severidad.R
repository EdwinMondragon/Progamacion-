{
    formula <- as.formula(paste(columna_severidad, "~ Tratamiento"))
    modelo <- aov(formula, data = data)
    print(paste("ANOVA para", columna_severidad))
    print(summary(modelo))
    tukey_resultado <- TukeyHSD(modelo)
    print(paste("Tukey HSD para", columna_severidad))
    print(tukey_resultado)
    plot(tukey_resultado, las = 1, main = paste("Tukey HSD -", 
        columna_severidad))
}
