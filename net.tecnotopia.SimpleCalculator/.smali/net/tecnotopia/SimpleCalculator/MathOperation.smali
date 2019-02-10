.class public final enum Lnet/tecnotopia/SimpleCalculator/MathOperation;
.super Ljava/lang/Enum;
.source "MathOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/tecnotopia/SimpleCalculator/MathOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$tecnotopia$SimpleCalculator$MathOperation:[I

.field public static final enum ADD:Lnet/tecnotopia/SimpleCalculator/MathOperation;

.field public static final enum DIVIDE:Lnet/tecnotopia/SimpleCalculator/MathOperation;

.field private static final synthetic ENUM$VALUES:[Lnet/tecnotopia/SimpleCalculator/MathOperation;

.field public static final enum MULTIPLY:Lnet/tecnotopia/SimpleCalculator/MathOperation;

.field public static final enum NONE:Lnet/tecnotopia/SimpleCalculator/MathOperation;

.field public static final enum POWER:Lnet/tecnotopia/SimpleCalculator/MathOperation;

.field public static final enum SUBTRACT:Lnet/tecnotopia/SimpleCalculator/MathOperation;


# instance fields
.field private final precedence:I


# direct methods
.method static synthetic $SWITCH_TABLE$net$tecnotopia$SimpleCalculator$MathOperation()[I
    .locals 3

    .prologue
    .line 3
    sget-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->$SWITCH_TABLE$net$tecnotopia$SimpleCalculator$MathOperation:[I

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
    sput-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->$SWITCH_TABLE$net$tecnotopia$SimpleCalculator$MathOperation:[I

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
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5
    new-instance v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5, v5}, Lnet/tecnotopia/SimpleCalculator/MathOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->NONE:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    new-instance v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v3, v3}, Lnet/tecnotopia/SimpleCalculator/MathOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->ADD:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    new-instance v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;

    const-string v1, "SUBTRACT"

    invoke-direct {v0, v1, v4, v3}, Lnet/tecnotopia/SimpleCalculator/MathOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->SUBTRACT:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    new-instance v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;

    const-string v1, "MULTIPLY"

    invoke-direct {v0, v1, v6, v4}, Lnet/tecnotopia/SimpleCalculator/MathOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->MULTIPLY:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    new-instance v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;

    const-string v1, "DIVIDE"

    invoke-direct {v0, v1, v7, v4}, Lnet/tecnotopia/SimpleCalculator/MathOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->DIVIDE:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    new-instance v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;

    const-string v1, "POWER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v6}, Lnet/tecnotopia/SimpleCalculator/MathOperation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->POWER:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lnet/tecnotopia/SimpleCalculator/MathOperation;

    sget-object v1, Lnet/tecnotopia/SimpleCalculator/MathOperation;->NONE:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    aput-object v1, v0, v5

    sget-object v1, Lnet/tecnotopia/SimpleCalculator/MathOperation;->ADD:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    aput-object v1, v0, v3

    sget-object v1, Lnet/tecnotopia/SimpleCalculator/MathOperation;->SUBTRACT:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    aput-object v1, v0, v4

    sget-object v1, Lnet/tecnotopia/SimpleCalculator/MathOperation;->MULTIPLY:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    aput-object v1, v0, v6

    sget-object v1, Lnet/tecnotopia/SimpleCalculator/MathOperation;->DIVIDE:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lnet/tecnotopia/SimpleCalculator/MathOperation;->POWER:Lnet/tecnotopia/SimpleCalculator/MathOperation;

    aput-object v2, v0, v1

    sput-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->ENUM$VALUES:[Lnet/tecnotopia/SimpleCalculator/MathOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "precedence"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->precedence:I

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/tecnotopia/SimpleCalculator/MathOperation;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;

    return-object v0
.end method

.method public static values()[Lnet/tecnotopia/SimpleCalculator/MathOperation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->ENUM$VALUES:[Lnet/tecnotopia/SimpleCalculator/MathOperation;

    array-length v1, v0

    new-array v2, v1, [Lnet/tecnotopia/SimpleCalculator/MathOperation;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getSymbol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lnet/tecnotopia/SimpleCalculator/MathOperation;->$SWITCH_TABLE$net$tecnotopia$SimpleCalculator$MathOperation()[I

    move-result-object v0

    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/MathOperation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 35
    const-string v0, ""

    :goto_0
    return-object v0

    .line 24
    :pswitch_0
    const-string v0, "+"

    goto :goto_0

    .line 26
    :pswitch_1
    const-string v0, "-"

    goto :goto_0

    .line 28
    :pswitch_2
    const-string v0, "\u00d7"

    goto :goto_0

    .line 30
    :pswitch_3
    const-string v0, "\u00f7"

    goto :goto_0

    .line 32
    :pswitch_4
    const-string v0, "x\u207f"

    goto :goto_0

    .line 22
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

.method public precedence()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lnet/tecnotopia/SimpleCalculator/MathOperation;->precedence:I

    return v0
.end method
