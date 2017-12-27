.class final Lcom/zhangling/danti15/BaseAActivity$1$5;
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
    iput-object p1, p0, Lcom/zhangling/danti15/BaseAActivity$1$5;->this$1:Lcom/zhangling/danti15/BaseAActivity$1;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zhangling/danti15/BaseAActivity$1$5;)Lcom/zhangling/danti15/BaseAActivity$1;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/zhangling/danti15/BaseAActivity$1$5;->this$1:Lcom/zhangling/danti15/BaseAActivity$1;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/zhangling/danti15/BaseAActivity$1$5;->this$1:Lcom/zhangling/danti15/BaseAActivity$1;

    invoke-static {v0}, Lcom/zhangling/danti15/BaseAActivity$1;->access$0(Lcom/zhangling/danti15/BaseAActivity$1;)Lcom/zhangling/danti15/BaseAActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangling/danti15/BaseAActivity;->access$4(Lcom/zhangling/danti15/BaseAActivity;)V

    .line 305
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zhangling/danti15/BaseAActivity$1$5$1;

    invoke-direct {v1, p0}, Lcom/zhangling/danti15/BaseAActivity$1$5$1;-><init>(Lcom/zhangling/danti15/BaseAActivity$1$5;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 313
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 314
    iget-object v0, p0, Lcom/zhangling/danti15/BaseAActivity$1$5;->this$1:Lcom/zhangling/danti15/BaseAActivity$1;

    invoke-static {v0}, Lcom/zhangling/danti15/BaseAActivity$1;->access$0(Lcom/zhangling/danti15/BaseAActivity$1;)Lcom/zhangling/danti15/BaseAActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangling/danti15/BaseAActivity;->finish()V

    .line 315
    return-void
.end method
