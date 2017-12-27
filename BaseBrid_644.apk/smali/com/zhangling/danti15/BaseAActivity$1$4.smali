.class final Lcom/zhangling/danti15/BaseAActivity$1$4;
.super Ljava/lang/Object;
.source "BaseAActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangling/danti15/BaseAActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zhangling/danti15/BaseAActivity$1;


# direct methods
.method constructor <init>(Lcom/zhangling/danti15/BaseAActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zhangling/danti15/BaseAActivity$1$4;->this$1:Lcom/zhangling/danti15/BaseAActivity$1;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/zhangling/danti15/BaseAActivity$1$4;->this$1:Lcom/zhangling/danti15/BaseAActivity$1;

    invoke-static {v0}, Lcom/zhangling/danti15/BaseAActivity$1;->access$0(Lcom/zhangling/danti15/BaseAActivity$1;)Lcom/zhangling/danti15/BaseAActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/zhangling/danti15/BaseAActivity;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 286
    iget-object v0, p0, Lcom/zhangling/danti15/BaseAActivity$1$4;->this$1:Lcom/zhangling/danti15/BaseAActivity$1;

    invoke-static {v0}, Lcom/zhangling/danti15/BaseAActivity$1;->access$0(Lcom/zhangling/danti15/BaseAActivity$1;)Lcom/zhangling/danti15/BaseAActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/zhangling/danti15/BaseAActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 287
    iget-object v0, p0, Lcom/zhangling/danti15/BaseAActivity$1$4;->this$1:Lcom/zhangling/danti15/BaseAActivity$1;

    invoke-static {v0}, Lcom/zhangling/danti15/BaseAActivity$1;->access$0(Lcom/zhangling/danti15/BaseAActivity$1;)Lcom/zhangling/danti15/BaseAActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/zhangling/danti15/BaseAActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    goto :goto_0
.end method
