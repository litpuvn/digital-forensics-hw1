.class public Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;
.super Landroid/app/Activity;
.source "SimpleCalculatorActivity.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation


# static fields
.field private static DEBUG:Z

.field static final DIALOG_ASK_DO_THIS_ID:I


# instance fields
.field private answerView:Landroid/widget/TextView;

.field private calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

.field private clipBoard:Landroid/text/ClipboardManager;

.field private display:Landroid/widget/EditText;

.field private memoryView:Landroid/widget/TextView;

.field private operButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->DEBUG:Z

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-direct {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;-><init>()V

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->operButtons:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;)V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->resetCalc()V

    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-boolean v0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "SimpleCalculator"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    return-void
.end method

.method private resetCalc()V
    .locals 1

    .prologue
    .line 321
    new-instance v0, Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-direct {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;-><init>()V

    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 322
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    .line 323
    return-void
.end method

.method private setOperationColor()V
    .locals 6

    .prologue
    .line 93
    iget-object v4, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v4}, Lnet/tecnotopia/SimpleCalculator/Calculator;->getCurrentOperation()Lnet/tecnotopia/SimpleCalculator/MathOperation;

    move-result-object v4

    invoke-virtual {v4}, Lnet/tecnotopia/SimpleCalculator/MathOperation;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "oper":Ljava/lang/String;
    new-instance v2, Landroid/graphics/LightingColorFilter;

    const v4, -0x838384

    const v5, -0xffff56

    invoke-direct {v2, v4, v5}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 95
    .local v2, "lcf":Landroid/graphics/LightingColorFilter;
    iget-object v4, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->operButtons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    return-void

    .line 95
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 96
    .local v1, "btn":Landroid/widget/Button;
    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 100
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 101
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "states"    # I

    .prologue
    .line 245
    return-void
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public onAllClearClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 161
    const-string v0, "onAllClearClick(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->debug(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->allClear()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 163
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    .line 164
    return-void
.end method

.method public onBackspaceClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    const-string v0, "onBackspaceClick(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->debug(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->backspace()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 177
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    .line 178
    return-void
.end method

.method public onChangeSignalClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    const-string v0, "onChangeSignalClick(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->debug(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->swapSignal()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 170
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    .line 171
    return-void
.end method

.method public onClearClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    const-string v0, "onClearClick(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->debug(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->clearInput()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 156
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    .line 157
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 369
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f04000b

    if-ne v0, v1, :cond_0

    .line 370
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->clipBoard:Landroid/text/ClipboardManager;

    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->display:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 372
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 54
    .local v0, "cs":Lnet/tecnotopia/SimpleCalculator/Calculator;
    if-eqz v0, :cond_0

    .line 55
    iput-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 58
    :cond_0
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    iput-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->clipBoard:Landroid/text/ClipboardManager;

    .line 60
    const v1, 0x7f070001

    invoke-virtual {p0, v1}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->display:Landroid/widget/EditText;

    .line 61
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->display:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 63
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->memoryView:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->answerView:Landroid/widget/TextView;

    .line 66
    iget-object v2, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->operButtons:Ljava/util/ArrayList;

    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v2, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->operButtons:Ljava/util/ArrayList;

    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v2, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->operButtons:Ljava/util/ArrayList;

    const v1, 0x7f07001c

    invoke-virtual {p0, v1}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v2, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->operButtons:Ljava/util/ArrayList;

    const v1, 0x7f07001d

    invoke-virtual {p0, v1}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v2, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->operButtons:Ljava/util/ArrayList;

    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->display:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 74
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    .line 75
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const v1, 0x7f04000b

    const/4 v0, 0x0

    .line 378
    invoke-interface {p1}, Landroid/view/ContextMenu;->clearHeader()V

    .line 379
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 380
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 381
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 382
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 346
    packed-switch p1, :pswitch_data_0

    .line 363
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 348
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 349
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f040007

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 350
    const v2, 0x7f040008

    new-instance v3, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity$1;

    invoke-direct {v3, p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity$1;-><init>(Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 355
    const v2, 0x7f040009

    new-instance v3, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity$2;

    invoke-direct {v3, p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity$2;-><init>(Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 361
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 314
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 315
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 316
    const/4 v1, 0x1

    return v1
.end method

.method public onDecimalSeparatorClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    const-string v0, "onDecimalSeparatorClick()"

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->debug(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    iget-char v1, v1, Lnet/tecnotopia/SimpleCalculator/Calculator;->DECIMAL_SEPARATOR:C

    invoke-virtual {v0, v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->appendDigit(C)Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 125
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    .line 126
    return-void
.end method

.method public onEqualsClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    const-string v0, "onEqualsClick(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->debug(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->equal()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 149
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    .line 150
    return-void
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "text"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "text"    # Landroid/text/Editable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "text"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v7, 0x38

    const/16 v6, 0x37

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 264
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 308
    :goto_0
    return v0

    .line 268
    :cond_0
    const-string v2, "onKeyUp(%s, %s, %d, %s)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {p2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p4}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->debug(Ljava/lang/String;)V

    .line 269
    const/4 v2, 0x7

    if-ne p3, v2, :cond_1

    .line 270
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lnet/tecnotopia/SimpleCalculator/Calculator;->appendDigit(C)Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 307
    :goto_1
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    goto :goto_0

    .line 271
    :cond_1
    const/16 v2, 0x8

    if-ne p3, v2, :cond_2

    .line 272
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Lnet/tecnotopia/SimpleCalculator/Calculator;->appendDigit(C)Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto :goto_1

    .line 273
    :cond_2
    const/16 v2, 0x9

    if-ne p3, v2, :cond_3

    .line 274
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lnet/tecnotopia/SimpleCalculator/Calculator;->appendDigit(C)Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto :goto_1

    .line 275
    :cond_3
    const/16 v2, 0xa

    if-ne p3, v2, :cond_4

    .line 276
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lnet/tecnotopia/SimpleCalculator/Calculator;->appendDigit(C)Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto :goto_1

    .line 277
    :cond_4
    const/16 v2, 0xb

    if-ne p3, v2, :cond_5

    .line 278
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Lnet/tecnotopia/SimpleCalculator/Calculator;->appendDigit(C)Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto :goto_1

    .line 279
    :cond_5
    const/16 v2, 0xc

    if-ne p3, v2, :cond_6

    .line 280
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    const/16 v2, 0x35

    invoke-virtual {v1, v2}, Lnet/tecnotopia/SimpleCalculator/Calculator;->appendDigit(C)Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto :goto_1

    .line 281
    :cond_6
    const/16 v2, 0xd

    if-ne p3, v2, :cond_7

    .line 282
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    const/16 v2, 0x36

    invoke-virtual {v1, v2}, Lnet/tecnotopia/SimpleCalculator/Calculator;->appendDigit(C)Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto :goto_1

    .line 283
    :cond_7
    const/16 v2, 0xe

    if-ne p3, v2, :cond_8

    .line 284
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v1, v6}, Lnet/tecnotopia/SimpleCalculator/Calculator;->appendDigit(C)Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto :goto_1

    .line 285
    :cond_8
    const/16 v2, 0xf

    if-ne p3, v2, :cond_9

    .line 286
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v1, v7}, Lnet/tecnotopia/SimpleCalculator/Calculator;->appendDigit(C)Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto :goto_1

    .line 287
    :cond_9
    const/16 v2, 0x10

    if-ne p3, v2, :cond_a

    .line 288
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    const/16 v2, 0x39

    invoke-virtual {v1, v2}, Lnet/tecnotopia/SimpleCalculator/Calculator;->appendDigit(C)Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto :goto_1

    .line 289
    :cond_a
    if-eq p3, v6, :cond_b

    if-ne p3, v7, :cond_c

    .line 290
    :cond_b
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lnet/tecnotopia/SimpleCalculator/Calculator;->appendDigit(C)Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto :goto_1

    .line 291
    :cond_c
    const/16 v2, 0x51

    if-ne p3, v2, :cond_d

    .line 292
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->add()Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto/16 :goto_1

    .line 293
    :cond_d
    const/16 v2, 0x45

    if-ne p3, v2, :cond_e

    .line 294
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->subtract()Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto/16 :goto_1

    .line 295
    :cond_e
    const/16 v2, 0x11

    if-ne p3, v2, :cond_f

    .line 296
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->multiply()Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto/16 :goto_1

    .line 297
    :cond_f
    const/16 v2, 0x4c

    if-ne p3, v2, :cond_10

    .line 298
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->divide()Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto/16 :goto_1

    .line 299
    :cond_10
    const/16 v2, 0x42

    if-ne p3, v2, :cond_11

    .line 300
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->equal()Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto/16 :goto_1

    .line 301
    :cond_11
    const/16 v2, 0x43

    if-ne p3, v2, :cond_12

    .line 302
    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->backspace()Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto/16 :goto_1

    :cond_12
    move v0, v1

    .line 304
    goto/16 :goto_0
.end method

.method public onLastAnswerClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    const-string v0, "onLastAnswerClick(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->debug(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->lastAnswer()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 184
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    .line 185
    return-void
.end method

.method public onMemoryAddClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 196
    const-string v0, "onMemoryAddClick(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->debug(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->memoryAdd()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 198
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    .line 199
    return-void
.end method

.method public onMemoryClearClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    const-string v0, "onMemoryClearClick(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->debug(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->memoryClear()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 191
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    .line 192
    return-void
.end method

.method public onMemoryRecallClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    const-string v0, "onMemoryRecallClick(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->debug(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->memoryRecall()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 219
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    .line 220
    return-void
.end method

.method public onMemoryStoreClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    const-string v0, "onMemoryStoreClick(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->debug(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->memoryStore()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 212
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    .line 213
    return-void
.end method

.method public onMemorySubtractClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    const-string v0, "onMemorySubtractClick(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->debug(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->memorySubtract()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 205
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    .line 206
    return-void
.end method

.method public onNumberClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 115
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "digit":Ljava/lang/String;
    const-string v2, "onNumberClick(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->debug(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v2, v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->appendDigit(Ljava/lang/String;)Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 118
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    .line 119
    return-void
.end method

.method public onOperatorClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    const-string v0, "onOperatorClick(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->debug(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070022

    if-ne v0, v1, :cond_1

    .line 132
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->add()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 142
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    .line 143
    return-void

    .line 133
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070023

    if-ne v0, v1, :cond_2

    .line 134
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->subtract()Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f07001c

    if-ne v0, v1, :cond_3

    .line 136
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->multiply()Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto :goto_0

    .line 137
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f07001d

    if-ne v0, v1, :cond_4

    .line 138
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->divide()Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070010

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->powerN()Lnet/tecnotopia/SimpleCalculator/Calculator;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 328
    const-string v3, "onOptionsItemSelected(%s)"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->debug(Ljava/lang/String;)V

    .line 329
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f07002c

    if-ne v3, v4, :cond_0

    .line 330
    invoke-virtual {p0, v6}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->showDialog(I)V

    .line 339
    :goto_0
    return v2

    .line 332
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f07002d

    if-ne v3, v4, :cond_1

    .line 333
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "intent":Landroid/content/Intent;
    const v3, 0x7f04000c

    invoke-virtual {p0, v3}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 339
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPercentClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 224
    const-string v0, "onPercentClick(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->debug(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->percent()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 226
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    .line 227
    return-void
.end method

.method public onPowerTwoClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    const-string v0, "onPowerTwoClick(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->debug(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->powerTwo()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 240
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    .line 241
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    return-object v0
.end method

.method public onSquareRootClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 231
    const-string v0, "onSquareRootClick(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->debug(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v0}, Lnet/tecnotopia/SimpleCalculator/Calculator;->squareRoot()Lnet/tecnotopia/SimpleCalculator/Calculator;

    .line 233
    invoke-virtual {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->updateDisplay()V

    .line 234
    return-void
.end method

.method public updateDisplay()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->display:Landroid/widget/EditText;

    iget-object v1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v1}, Lnet/tecnotopia/SimpleCalculator/Calculator;->getCurrentInput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->memoryView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "M="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v2}, Lnet/tecnotopia/SimpleCalculator/Calculator;->getMemory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->answerView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ANS="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->calc:Lnet/tecnotopia/SimpleCalculator/Calculator;

    invoke-virtual {v2}, Lnet/tecnotopia/SimpleCalculator/Calculator;->getLastAnswer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-direct {p0}, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->setOperationColor()V

    .line 89
    return-void
.end method
