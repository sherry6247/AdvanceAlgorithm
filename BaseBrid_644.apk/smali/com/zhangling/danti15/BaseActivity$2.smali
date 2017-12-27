.class final Lcom/zhangling/danti15/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangling/danti15/BaseActivity;->statisticsRunTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field comm:Z

.field final synthetic this$0:Lcom/zhangling/danti15/BaseActivity;


# direct methods
.method constructor <init>(Lcom/zhangling/danti15/BaseActivity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zhangling/danti15/BaseActivity$2;->this$0:Lcom/zhangling/danti15/BaseActivity;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangling/danti15/BaseActivity$2;->comm:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 256
    :goto_0
    iget-boolean v1, p0, Lcom/zhangling/danti15/BaseActivity$2;->comm:Z

    if-nez v1, :cond_0

    .line 270
    return-void

    .line 259
    :cond_0
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 262
    iget-object v1, p0, Lcom/zhangling/danti15/BaseActivity$2;->this$0:Lcom/zhangling/danti15/BaseActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/zhangling/danti15/BaseActivity;->access$5(Lcom/zhangling/danti15/BaseActivity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 264
    .local v0, "e":Ljava/lang/InterruptedException;
    iput-boolean v3, p0, Lcom/zhangling/danti15/BaseActivity$2;->comm:Z

    .line 266
    iget-object v1, p0, Lcom/zhangling/danti15/BaseActivity$2;->this$0:Lcom/zhangling/danti15/BaseActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/zhangling/danti15/BaseActivity;->access$5(Lcom/zhangling/danti15/BaseActivity;I)V

    goto :goto_0
.end method
