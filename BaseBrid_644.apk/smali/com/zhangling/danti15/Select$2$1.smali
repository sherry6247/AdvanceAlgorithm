.class final Lcom/zhangling/danti15/Select$2$1;
.super Ljava/lang/Object;
.source "Select.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangling/danti15/Select$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zhangling/danti15/Select$2;


# direct methods
.method constructor <init>(Lcom/zhangling/danti15/Select$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zhangling/danti15/Select$2$1;->this$1:Lcom/zhangling/danti15/Select$2;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/zhangling/danti15/Select$2$1;->this$1:Lcom/zhangling/danti15/Select$2;

    invoke-static {v1}, Lcom/zhangling/danti15/Select$2;->access$0(Lcom/zhangling/danti15/Select$2;)Lcom/zhangling/danti15/Select;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangling/danti15/Select;->access$0(Lcom/zhangling/danti15/Select;)I

    move-result v1

    iget-object v2, p0, Lcom/zhangling/danti15/Select$2$1;->this$1:Lcom/zhangling/danti15/Select$2;

    invoke-static {v2}, Lcom/zhangling/danti15/Select$2;->access$0(Lcom/zhangling/danti15/Select$2;)Lcom/zhangling/danti15/Select;

    move-result-object v2

    iget-object v2, v2, Lcom/zhangling/danti15/Select;->al_data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 144
    const-wide/16 v1, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 145
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/zhangling/danti15/Select;->sendMsg(I)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/zhangling/danti15/Select$2$1;->this$1:Lcom/zhangling/danti15/Select$2;

    invoke-static {v1}, Lcom/zhangling/danti15/Select$2;->access$0(Lcom/zhangling/danti15/Select$2;)Lcom/zhangling/danti15/Select;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangling/danti15/Select;->access$0(Lcom/zhangling/danti15/Select;)I

    move-result v1

    iget-object v2, p0, Lcom/zhangling/danti15/Select$2$1;->this$1:Lcom/zhangling/danti15/Select$2;

    invoke-static {v2}, Lcom/zhangling/danti15/Select$2;->access$0(Lcom/zhangling/danti15/Select$2;)Lcom/zhangling/danti15/Select;

    move-result-object v2

    iget-object v2, v2, Lcom/zhangling/danti15/Select;->al_data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    .line 148
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/zhangling/danti15/Select;->sendMsg(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
