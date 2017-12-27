.class final Lcom/zhangling/danti15/BaseActivity$4;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangling/danti15/BaseActivity;->checkLastRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangling/danti15/BaseActivity;


# direct methods
.method constructor <init>(Lcom/zhangling/danti15/BaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zhangling/danti15/BaseActivity$4;->this$0:Lcom/zhangling/danti15/BaseActivity;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 403
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 404
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/zhangling/danti15/BaseActivity$4;->this$0:Lcom/zhangling/danti15/BaseActivity;

    invoke-static {v2}, Lcom/zhangling/danti15/BaseActivity;->access$3(Lcom/zhangling/danti15/BaseActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/zhangling/danti15/Select;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 405
    sget-object v2, Lcom/zhangling/danti15/BaseActivity;->sp:Landroid/content/SharedPreferences;

    const-string v3, "book_lastRead_id"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 406
    .local v0, "id":I
    const-string v2, "index"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    iget-object v2, p0, Lcom/zhangling/danti15/BaseActivity$4;->this$0:Lcom/zhangling/danti15/BaseActivity;

    invoke-virtual {v2, v1}, Lcom/zhangling/danti15/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 408
    return-void
.end method
