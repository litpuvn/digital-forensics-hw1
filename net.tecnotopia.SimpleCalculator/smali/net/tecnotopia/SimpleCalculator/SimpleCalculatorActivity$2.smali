.class Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity$2;
.super Ljava/lang/Object;
.source "SimpleCalculatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;


# direct methods
.method constructor <init>(Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity$2;->this$0:Lnet/tecnotopia/SimpleCalculator/SimpleCalculatorActivity;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 358
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 359
    return-void
.end method
