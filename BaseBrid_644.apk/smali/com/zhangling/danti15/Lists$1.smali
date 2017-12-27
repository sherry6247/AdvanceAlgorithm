.class final Lcom/zhangling/danti15/Lists$1;
.super Landroid/os/Handler;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangling/danti15/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 262
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 264
    :pswitch_0
    sget-object v1, Lcom/zhangling/danti15/Lists;->lists:Lcom/zhangling/danti15/Lists;

    invoke-static {v1}, Lcom/zhangling/danti15/Lists;->access$0(Lcom/zhangling/danti15/Lists;)V

    goto :goto_0

    .line 268
    :pswitch_1
    sget-object v1, Lcom/zhangling/danti15/Lists;->lists:Lcom/zhangling/danti15/Lists;

    iget-object v1, v1, Lcom/zhangling/danti15/Lists;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    :try_start_0
    sget-object v1, Lcom/zhangling/danti15/Lists;->lists:Lcom/zhangling/danti15/Lists;

    iget-object v1, v1, Lcom/zhangling/danti15/Lists;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
