.class public Lnet/tecnotopia/SimpleCalculator/Calculator;
.super Ljava/lang/Object;
.source "Calculator.java"


# static fields
.field private static synthetic $SWITCH_TABLE$net$tecnotopia$SimpleCalculator$MathOperation:[I

.field public static ERROR_STATUS:Ljava/lang/String;

.field public static MAX_DIGITS:I


# instance fields
.field public DECIMAL_SEPARATOR:C

.field private currOp:Lnet/tecnotopia/SimpleCalculator/MathOperation;

.field private currentInput:Ljava/lang/StringBuffer;

.field private inError:Z

.field private lastAnswer:Ljava/math/BigDecimal;

.field private lastInputNumber:Ljava/math/BigDecimal;

.field private memoryNumber:Ljava/math/BigDecimal;

.field private resetInput:Z

.field private stackedNumber:Ljava/math/BigDecimal;

.field private stackedOper:Lnet/tecnotopia/SimpleCalculator/MathOperation;


# direct methods
.method static synthetic $SWITCH_TABLE$net$tecnotopia$SimpleCalculator$MathOperation()[I
    .locals 3

    .prologue
    .line 12
    sget-object v0, Lnet/tecnotopia/SimpleCalculator/Calculator;->$SWITCH_TABLE$net$tecnotopia$SimpleCalculator$MathOperation:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/tecnotopia/SimpleCalculator/MathOperation;->values()[Lnet/tecnotopia/SimpleCalculator/MathOperation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/tecnotopia/SimpleCalculator/MathOperation;->ADD:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    invoke-virtual {v1}, Lnet/tecnotopia/SimpleCalculator/MathOperation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lnet/tecnotopia/SimpleCalculator/MathOperation;->DIVIDE:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    invoke-virtual {v1}, Lnet/tecnotopia/SimpleCalculator/MathOperation;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lnet/tecnotopia/SimpleCalculator/MathOperation;->MULTIPLY:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    invoke-virtual {v1}, Lnet/tecnotopia/SimpleCalculator/MathOperation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lnet/tecnotopia/SimpleCalculator/MathOperation;->NONE:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    invoke-virtual {v1}, Lnet/tecnotopia/SimpleCalculator/MathOperation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lnet/tecnotopia/SimpleCalculator/MathOperation;->POWER:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    invoke-virtual {v1}, Lnet/tecnotopia/SimpleCalculator/MathOperation;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lnet/tecnotopia/SimpleCalculator/MathOperation;->SUBTRACT:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    invoke-virtual {v1}, Lnet/tecnotopia/SimpleCalculator/MathOperation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lnet/tecnotopia/SimpleCalculator/Calculator;->$SWITCH_TABLE$net$tecnotopia$SimpleCalculator$MathOperation:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x14

    sput v0, Lnet/tecnotopia/SimpleCalculator/Calculator;->MAX_DIGITS:I

    .line 25
    const-string v0, "- ERR -"

    sput-object v0, Lnet/tecnotopia/SimpleCalculator/Calculator;->ERROR_STATUS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x2e

    iput-char v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->DECIMAL_SEPARATOR:C

    .line 31
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->memoryNumber:Ljava/math/BigDecimal;

    .line 32
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->lastAnswer:Ljava/math/BigDecimal;

    .line 33
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->allClear()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 34
    return-void
.end method

.method private calculate()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 102
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    :goto_0
    return-object p0

    .line 105
    :cond_0
    :try_start_0
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currOp:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    iget-object v2, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->lastInputNumber:Ljava/math/BigDecimal;

    invoke-direct {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->getCurrentNumber()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lnet/tecnotopia/SimpleCalculator/Calculator;->doMath(Lnet/tecnotopia/SimpleCalculator/MathOperation;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->lastAnswer:Ljava/math/BigDecimal;

    .line 106
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->lastAnswer:Ljava/math/BigDecimal;

    invoke-virtual {p0, v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->formatNumber(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->resetCurrentInput(Ljava/lang/String;)V

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->resetInput:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "exp":Ljava/lang/Exception;
    invoke-direct {p0, v4}, Lnet/tecnotopia/SimpleCalculator/Calculator;->setError(Z)V

    goto :goto_0
.end method

.method private doMath(Lnet/tecnotopia/SimpleCalculator/MathOperation;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 5
    .param p1, "op"    # Lnet/tecnotopia/SimpleCalculator/MathOperation;
    .param p2, "a"    # Ljava/math/BigDecimal;
    .param p3, "b"    # Ljava/math/BigDecimal;

    .prologue
    .line 132
    invoke-static {}, Lnet/tecnotopia/SimpleCalculator/Calculator;->$SWITCH_TABLE$net$tecnotopia$SimpleCalculator$MathOperation()[I

    move-result-object v0

    invoke-virtual {p1}, Lnet/tecnotopia/SimpleCalculator/MathOperation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 145
    .end local p3    # "b":Ljava/math/BigDecimal;
    :goto_0
    return-object p3

    .line 134
    .restart local p3    # "b":Ljava/math/BigDecimal;
    :pswitch_0
    invoke-virtual {p2, p3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p3

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-virtual {p2, p3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p3

    goto :goto_0

    .line 138
    :pswitch_2
    invoke-virtual {p2, p3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p3

    goto :goto_0

    .line 140
    :pswitch_3
    sget v0, Lnet/tecnotopia/SimpleCalculator/Calculator;->MAX_DIGITS:I

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p2, p3, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p3

    goto :goto_0

    .line 142
    :pswitch_4
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    move-object p3, v0

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCurrentNumber()Ljava/math/BigDecimal;
    .locals 3

    .prologue
    .line 200
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->getCurrentInput()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-object v1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->setError(Z)V

    .line 203
    const-string v1, "Simple Calculator"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_0
.end method

.method private isDecimalInput()Z
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->DECIMAL_SEPARATOR:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetCurrentInput(Ljava/lang/String;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-direct {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->getCurrentNumber()Ljava/math/BigDecimal;

    .line 326
    return-void
.end method

.method private setCurrentInput(Ljava/math/BigDecimal;)V
    .locals 2
    .param p1, "number"    # Ljava/math/BigDecimal;

    .prologue
    .line 387
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->formatNumber(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->resetCurrentInput(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->setError(Z)V

    goto :goto_0
.end method

.method private setError(Z)V
    .locals 2
    .param p1, "error"    # Z

    .prologue
    .line 330
    iput-boolean p1, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->inError:Z

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->resetInput:Z

    .line 332
    if-eqz p1, :cond_0

    .line 333
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lnet/tecnotopia/SimpleCalculator/Calculator;->ERROR_STATUS:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->clearInput()Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto :goto_0
.end method

.method private static sqrt(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 8
    .param p0, "value"    # Ljava/math/BigDecimal;
    .param p1, "rootMC"    # Ljava/math/MathContext;

    .prologue
    .line 408
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 409
    .local v0, "x":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method private startOperation(Lnet/tecnotopia/SimpleCalculator/MathOperation;)Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 2
    .param p1, "thisOp"    # Lnet/tecnotopia/SimpleCalculator/MathOperation;

    .prologue
    .line 340
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-object p0

    .line 342
    :cond_1
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currOp:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    sget-object v1, Lnet/tecnotopia/SimpleCalculator/MathOperation;->NONE:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->resetInput:Z

    if-nez v0, :cond_2

    .line 343
    invoke-virtual {p1}, Lnet/tecnotopia/SimpleCalculator/MathOperation;->precedence()I

    move-result v0

    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currOp:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    invoke-virtual {v1}, Lnet/tecnotopia/SimpleCalculator/MathOperation;->precedence()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 344
    invoke-direct {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->calculate()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 358
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->resetInput:Z

    .line 361
    iput-object p1, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currOp:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    .line 362
    invoke-direct {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->getCurrentNumber()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->lastInputNumber:Ljava/math/BigDecimal;

    goto :goto_0

    .line 345
    :cond_3
    invoke-virtual {p1}, Lnet/tecnotopia/SimpleCalculator/MathOperation;->precedence()I

    move-result v0

    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currOp:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    invoke-virtual {v1}, Lnet/tecnotopia/SimpleCalculator/MathOperation;->precedence()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 346
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currOp:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->stackedOper:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    .line 347
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->lastInputNumber:Ljava/math/BigDecimal;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->stackedNumber:Ljava/math/BigDecimal;

    goto :goto_1

    .line 348
    :cond_4
    invoke-virtual {p1}, Lnet/tecnotopia/SimpleCalculator/MathOperation;->precedence()I

    move-result v0

    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currOp:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    invoke-virtual {v1}, Lnet/tecnotopia/SimpleCalculator/MathOperation;->precedence()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 349
    invoke-direct {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->calculate()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 350
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->stackedOper:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currOp:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    .line 351
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->stackedNumber:Ljava/math/BigDecimal;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->lastInputNumber:Ljava/math/BigDecimal;

    .line 352
    invoke-direct {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->calculate()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 353
    sget-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->NONE:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->stackedOper:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    goto :goto_1
.end method


# virtual methods
.method public add()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    .end local p0    # "this":Lnet/tecnotopia/SimpleCalculator/Calculator;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lnet/tecnotopia/SimpleCalculator/Calculator;
    :cond_0
    sget-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->ADD:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->startOperation(Lnet/tecnotopia/SimpleCalculator/MathOperation;)Lnet/tecnotopia/SimpleCalculator/Calculator;

    move-result-object p0

    goto :goto_0
.end method

.method public allClear()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    .line 46
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->lastInputNumber:Ljava/math/BigDecimal;

    .line 47
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->stackedNumber:Ljava/math/BigDecimal;

    .line 48
    sget-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->NONE:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currOp:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    .line 49
    sget-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->NONE:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->stackedOper:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    .line 50
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->memoryNumber:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->memoryNumber:Ljava/math/BigDecimal;

    .line 52
    :cond_0
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->lastAnswer:Ljava/math/BigDecimal;

    if-nez v0, :cond_1

    .line 53
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->lastAnswer:Ljava/math/BigDecimal;

    .line 54
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->resetInput:Z

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->inError:Z

    .line 56
    return-object p0
.end method

.method public appendDigit(C)Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 3
    .param p1, "digit"    # C

    .prologue
    const/16 v2, 0x30

    .line 61
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-object p0

    .line 63
    :cond_1
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sget v1, Lnet/tecnotopia/SimpleCalculator/Calculator;->MAX_DIGITS:I

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->resetInput:Z

    if-eqz v0, :cond_0

    .line 65
    :cond_2
    iget-char v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->DECIMAL_SEPARATOR:C

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isDecimalInput()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->resetInput:Z

    if-eqz v0, :cond_0

    .line 67
    :cond_3
    iget-char v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->DECIMAL_SEPARATOR:C

    if-eq p1, v0, :cond_4

    if-lt p1, v2, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 69
    :cond_4
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eq p1, v2, :cond_0

    .line 71
    :cond_5
    iget-boolean v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->resetInput:Z

    if-eqz v0, :cond_6

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->resetInput:Z

    .line 75
    :cond_6
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-lt p1, v2, :cond_7

    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    .line 77
    :cond_7
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public appendDigit(Ljava/lang/String;)Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 1
    .param p1, "digit"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    .end local p0    # "this":Lnet/tecnotopia/SimpleCalculator/Calculator;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lnet/tecnotopia/SimpleCalculator/Calculator;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->appendDigit(C)Lnet/tecnotopia/SimpleCalculator/Calculator;

    move-result-object p0

    goto :goto_0
.end method

.method public backspace()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object p0

    .line 92
    :cond_1
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 93
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 95
    :cond_2
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "0"

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->resetCurrentInput(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearInput()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-object p0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->resetInput:Z

    goto :goto_0
.end method

.method public divide()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    .end local p0    # "this":Lnet/tecnotopia/SimpleCalculator/Calculator;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lnet/tecnotopia/SimpleCalculator/Calculator;
    :cond_0
    sget-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->DIVIDE:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->startOperation(Lnet/tecnotopia/SimpleCalculator/MathOperation;)Lnet/tecnotopia/SimpleCalculator/Calculator;

    move-result-object p0

    goto :goto_0
.end method

.method public equal()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-object p0

    .line 153
    :cond_0
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->stackedOper:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    sget-object v1, Lnet/tecnotopia/SimpleCalculator/MathOperation;->NONE:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    if-eq v0, v1, :cond_1

    .line 154
    invoke-direct {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->calculate()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 155
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->stackedOper:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currOp:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    .line 156
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->stackedNumber:Ljava/math/BigDecimal;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->lastInputNumber:Ljava/math/BigDecimal;

    .line 157
    sget-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->NONE:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->stackedOper:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    .line 158
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->stackedNumber:Ljava/math/BigDecimal;

    .line 160
    :cond_1
    invoke-direct {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->calculate()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 161
    sget-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->NONE:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currOp:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    .line 162
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->lastInputNumber:Ljava/math/BigDecimal;

    goto :goto_0
.end method

.method public formatNumber(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 11
    .param p1, "number"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 168
    if-nez p1, :cond_1

    .line 169
    const-string v5, ""

    .line 189
    :cond_0
    return-object v5

    .line 170
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v10

    if-gez v10, :cond_2

    move v7, v8

    .line 172
    .local v7, "sign":I
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 173
    .local v0, "decimals":I
    if-lez v0, :cond_3

    move v2, v8

    .line 174
    .local v2, "dot":I
    :goto_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v0

    sub-int/2addr v8, v2

    sub-int v3, v8, v7

    .line 175
    .local v3, "integers":I
    sget v8, Lnet/tecnotopia/SimpleCalculator/Calculator;->MAX_DIGITS:I

    if-le v3, v8, :cond_4

    .line 176
    new-instance v8, Ljava/lang/ArithmeticException;

    const-string v9, "Number too big"

    invoke-direct {v8, v9}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v0    # "decimals":I
    .end local v2    # "dot":I
    .end local v3    # "integers":I
    .end local v7    # "sign":I
    :cond_2
    move v7, v9

    .line 171
    goto :goto_0

    .restart local v0    # "decimals":I
    .restart local v7    # "sign":I
    :cond_3
    move v2, v9

    .line 173
    goto :goto_1

    .line 177
    .restart local v2    # "dot":I
    .restart local v3    # "integers":I
    :cond_4
    sget v8, Lnet/tecnotopia/SimpleCalculator/Calculator;->MAX_DIGITS:I

    sub-int/2addr v8, v3

    sub-int/2addr v8, v2

    sub-int v6, v8, v7

    .line 179
    .local v6, "sddigs":I
    if-lez v0, :cond_5

    .line 180
    new-instance v8, Ljava/lang/String;

    new-array v9, v6, [C

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    const-string v9, "\u0000"

    const-string v10, "#"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "mask":Ljava/lang/String;
    new-instance v1, Ljava/text/DecimalFormat;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "0."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 185
    .end local v4    # "mask":Ljava/lang/String;
    .local v1, "df":Ljava/text/DecimalFormat;
    :goto_2
    new-instance v8, Ljava/text/DecimalFormatSymbols;

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v8, v9}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v1, v8}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 186
    invoke-virtual {v1, p1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, "ret":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sget v9, Lnet/tecnotopia/SimpleCalculator/Calculator;->MAX_DIGITS:I

    if-le v8, v9, :cond_0

    .line 188
    new-instance v8, Ljava/lang/ArithmeticException;

    const-string v9, "Number too big"

    invoke-direct {v8, v9}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 183
    .end local v1    # "df":Ljava/text/DecimalFormat;
    .end local v5    # "ret":Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v8, "0"

    invoke-direct {v1, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .restart local v1    # "df":Ljava/text/DecimalFormat;
    goto :goto_2
.end method

.method public getCurrentInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentOperation()Lnet/tecnotopia/SimpleCalculator/MathOperation;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->NONE:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    .line 212
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currOp:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    goto :goto_0
.end method

.method public getLastAnswer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    :try_start_0
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->lastAnswer:Ljava/math/BigDecimal;

    invoke-virtual {p0, v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->formatNumber(Ljava/math/BigDecimal;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 222
    :goto_0
    return-object v1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "exp":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->lastAnswer:Ljava/math/BigDecimal;

    .line 221
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->setError(Z)V

    .line 222
    sget-object v1, Lnet/tecnotopia/SimpleCalculator/Calculator;->ERROR_STATUS:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMemory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    :try_start_0
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->memoryNumber:Ljava/math/BigDecimal;

    invoke-virtual {p0, v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->formatNumber(Ljava/math/BigDecimal;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 233
    :goto_0
    return-object v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "exp":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->memoryNumber:Ljava/math/BigDecimal;

    .line 232
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->setError(Z)V

    .line 233
    sget-object v1, Lnet/tecnotopia/SimpleCalculator/Calculator;->ERROR_STATUS:Ljava/lang/String;

    goto :goto_0
.end method

.method public input(Ljava/lang/String;)Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 3
    .param p1, "digits"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    :cond_0
    return-object p0

    .line 241
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 242
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 243
    .local v0, "digit":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x39

    if-gt v0, v2, :cond_2

    .line 244
    invoke-virtual {p0, v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->appendDigit(C)Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 245
    :cond_2
    iget-char v2, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->DECIMAL_SEPARATOR:C

    if-ne v0, v2, :cond_3

    .line 246
    iget-char v2, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->DECIMAL_SEPARATOR:C

    invoke-virtual {p0, v2}, Lnet/tecnotopia/SimpleCalculator/Calculator;->appendDigit(C)Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 241
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isInError()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->inError:Z

    return v0
.end method

.method public lastAnswer()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    :goto_0
    return-object p0

    .line 265
    :cond_0
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->lastAnswer:Ljava/math/BigDecimal;

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->setCurrentInput(Ljava/math/BigDecimal;)V

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->resetInput:Z

    goto :goto_0
.end method

.method public memoryAdd()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    :goto_0
    return-object p0

    .line 274
    :cond_0
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->memoryNumber:Ljava/math/BigDecimal;

    invoke-direct {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->getCurrentNumber()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->memoryNumber:Ljava/math/BigDecimal;

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->resetInput:Z

    goto :goto_0
.end method

.method public memoryClear()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    :goto_0
    return-object p0

    .line 283
    :cond_0
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->memoryNumber:Ljava/math/BigDecimal;

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->resetInput:Z

    goto :goto_0
.end method

.method public memoryRecall()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-object p0

    .line 292
    :cond_0
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->memoryNumber:Ljava/math/BigDecimal;

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->setCurrentInput(Ljava/math/BigDecimal;)V

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->resetInput:Z

    goto :goto_0
.end method

.method public memoryStore()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    :goto_0
    return-object p0

    .line 310
    :cond_0
    invoke-direct {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->getCurrentNumber()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->memoryNumber:Ljava/math/BigDecimal;

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->resetInput:Z

    goto :goto_0
.end method

.method public memorySubtract()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 2

    .prologue
    .line 299
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    :goto_0
    return-object p0

    .line 301
    :cond_0
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->memoryNumber:Ljava/math/BigDecimal;

    invoke-direct {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->getCurrentNumber()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->memoryNumber:Ljava/math/BigDecimal;

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->resetInput:Z

    goto :goto_0
.end method

.method public multiply()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    .end local p0    # "this":Lnet/tecnotopia/SimpleCalculator/Calculator;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lnet/tecnotopia/SimpleCalculator/Calculator;
    :cond_0
    sget-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->MULTIPLY:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->startOperation(Lnet/tecnotopia/SimpleCalculator/MathOperation;)Lnet/tecnotopia/SimpleCalculator/Calculator;

    move-result-object p0

    goto :goto_0
.end method

.method public percent()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 4

    .prologue
    .line 395
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    :goto_0
    return-object p0

    .line 397
    :cond_0
    invoke-direct {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->getCurrentNumber()Ljava/math/BigDecimal;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 398
    .local v0, "percentage":Ljava/math/BigDecimal;
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currOp:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    sget-object v2, Lnet/tecnotopia/SimpleCalculator/MathOperation;->ADD:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currOp:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    sget-object v2, Lnet/tecnotopia/SimpleCalculator/MathOperation;->SUBTRACT:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    if-ne v1, v2, :cond_2

    .line 399
    :cond_1
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->lastInputNumber:Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->setCurrentInput(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 401
    :cond_2
    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->setCurrentInput(Ljava/math/BigDecimal;)V

    goto :goto_0
.end method

.method public powerN()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    .end local p0    # "this":Lnet/tecnotopia/SimpleCalculator/Calculator;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lnet/tecnotopia/SimpleCalculator/Calculator;
    :cond_0
    sget-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->POWER:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->startOperation(Lnet/tecnotopia/SimpleCalculator/MathOperation;)Lnet/tecnotopia/SimpleCalculator/Calculator;

    move-result-object p0

    goto :goto_0
.end method

.method public powerTwo()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 2

    .prologue
    .line 426
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    :goto_0
    return-object p0

    .line 428
    :cond_0
    invoke-direct {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->getCurrentNumber()Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->pow(I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->setCurrentInput(Ljava/math/BigDecimal;)V

    goto :goto_0
.end method

.method public squareRoot()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 4

    .prologue
    .line 414
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    :goto_0
    return-object p0

    .line 417
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->getCurrentNumber()Ljava/math/BigDecimal;

    move-result-object v1

    new-instance v2, Ljava/math/MathContext;

    sget v3, Lnet/tecnotopia/SimpleCalculator/Calculator;->MAX_DIGITS:I

    invoke-direct {v2, v3}, Ljava/math/MathContext;-><init>(I)V

    invoke-static {v1, v2}, Lnet/tecnotopia/SimpleCalculator/Calculator;->sqrt(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->setCurrentInput(Ljava/math/BigDecimal;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->setError(Z)V

    goto :goto_0
.end method

.method public subtract()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    .end local p0    # "this":Lnet/tecnotopia/SimpleCalculator/Calculator;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lnet/tecnotopia/SimpleCalculator/Calculator;
    :cond_0
    sget-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->SUBTRACT:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->startOperation(Lnet/tecnotopia/SimpleCalculator/MathOperation;)Lnet/tecnotopia/SimpleCalculator/Calculator;

    move-result-object p0

    goto :goto_0
.end method

.method public swapSignal()Lnet/tecnotopia/SimpleCalculator/Calculator;
    .locals 3

    .prologue
    const/16 v2, 0x2d

    const/4 v1, 0x0

    .line 375
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->isInError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    :goto_0
    return-object p0

    .line 377
    :cond_0
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 378
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 380
    :cond_1
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/Calculator;->currentInput:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
