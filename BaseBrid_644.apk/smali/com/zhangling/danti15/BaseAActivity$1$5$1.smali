.class final Lcom/zhangling/danti15/BaseAActivity$1$5$1;
.super Ljava/lang/Object;
.source "BaseAActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangling/danti15/BaseAActivity$1$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zhangling/danti15/BaseAActivity$1$5;


# direct methods
.method constructor <init>(Lcom/zhangling/danti15/BaseAActivity$1$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zhangling/danti15/BaseAActivity$1$5$1;->this$2:Lcom/zhangling/danti15/BaseAActivity$1$5;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 309
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 310
    iget-object v0, p0, Lcom/zhangling/danti15/BaseAActivity$1$5$1;->this$2:Lcom/zhangling/danti15/BaseAActivity$1$5;

    invoke-static {v0}, Lcom/zhangling/danti15/BaseAActivity$1$5;->access$0(Lcom/zhangling/danti15/BaseAActivity$1$5;)Lcom/zhangling/danti15/BaseAActivity$1;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangling/danti15/BaseAActivity$1;->access$0(Lcom/zhangling/danti15/BaseAActivity$1;)Lcom/zhangling/danti15/BaseAActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zhangling/danti15/BaseAActivity;->access$1(Lcom/zhangling/danti15/BaseAActivity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    goto :goto_0
.end method
