.class final Lcom/zhangling/danti15/BaseAActivity$1$1;
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
    iput-object p1, p0, Lcom/zhangling/danti15/BaseAActivity$1$1;->this$1:Lcom/zhangling/danti15/BaseAActivity$1;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/zhangling/danti15/BaseAActivity$1$1;->this$1:Lcom/zhangling/danti15/BaseAActivity$1;

    invoke-static {v0}, Lcom/zhangling/danti15/BaseAActivity$1;->access$0(Lcom/zhangling/danti15/BaseAActivity$1;)Lcom/zhangling/danti15/BaseAActivity;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/zhangling/danti15/BaseAActivity;->access$1(Lcom/zhangling/danti15/BaseAActivity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0
.end method
