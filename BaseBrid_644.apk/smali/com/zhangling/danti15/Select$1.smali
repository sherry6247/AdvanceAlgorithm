.class final Lcom/zhangling/danti15/Select$1;
.super Landroid/os/Handler;
.source "Select.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangling/danti15/Select;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 203
    :pswitch_0
    sget-object v0, Lcom/zhangling/danti15/Select;->select:Lcom/zhangling/danti15/Select;

    invoke-static {v0}, Lcom/zhangling/danti15/Select;->access$0(Lcom/zhangling/danti15/Select;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/zhangling/danti15/Select;->access$1(Lcom/zhangling/danti15/Select;I)V

    .line 204
    sget-object v0, Lcom/zhangling/danti15/Select;->select:Lcom/zhangling/danti15/Select;

    invoke-static {v0}, Lcom/zhangling/danti15/Select;->access$2(Lcom/zhangling/danti15/Select;)V

    goto :goto_0

    .line 207
    :pswitch_1
    sget-object v0, Lcom/zhangling/danti15/Select;->select:Lcom/zhangling/danti15/Select;

    invoke-static {v0}, Lcom/zhangling/danti15/Select;->access$3(Lcom/zhangling/danti15/Select;)V

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
