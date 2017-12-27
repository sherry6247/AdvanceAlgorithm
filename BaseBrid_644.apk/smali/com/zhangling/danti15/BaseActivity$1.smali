.class final Lcom/zhangling/danti15/BaseActivity$1;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangling/danti15/BaseActivity;
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
    iput-object p1, p0, Lcom/zhangling/danti15/BaseActivity$1;->this$0:Lcom/zhangling/danti15/BaseActivity;

    .line 196
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const-string v7, "global_runTime"

    .line 199
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 200
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 237
    :goto_0
    return-void

    .line 203
    :pswitch_0
    sget-object v4, Lcom/zhangling/danti15/BaseActivity;->sp:Landroid/content/SharedPreferences;

    const-string v5, "global_runTime"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 204
    .local v1, "global_runTime":I
    sget-object v4, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "global_runTime"

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 205
    sget-object v4, Lcom/zhangling/danti15/BaseActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 210
    .end local v1    # "global_runTime":I
    :pswitch_1
    iget-object v4, p0, Lcom/zhangling/danti15/BaseActivity$1;->this$0:Lcom/zhangling/danti15/BaseActivity;

    invoke-virtual {v4}, Lcom/zhangling/danti15/BaseActivity;->statisticsRunTime()V

    .line 216
    :pswitch_2
    iget-object v4, p0, Lcom/zhangling/danti15/BaseActivity$1;->this$0:Lcom/zhangling/danti15/BaseActivity;

    invoke-static {v4}, Lcom/zhangling/danti15/BaseActivity;->access$0(Lcom/zhangling/danti15/BaseActivity;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    iget-object v5, p0, Lcom/zhangling/danti15/BaseActivity$1;->this$0:Lcom/zhangling/danti15/BaseActivity;

    invoke-static {v5}, Lcom/zhangling/danti15/BaseActivity;->access$1(Lcom/zhangling/danti15/BaseActivity;)I

    move-result v5

    div-int v3, v4, v5

    .line 218
    .local v3, "result":I
    iget-object v4, p0, Lcom/zhangling/danti15/BaseActivity$1;->this$0:Lcom/zhangling/danti15/BaseActivity;

    invoke-static {v4}, Lcom/zhangling/danti15/BaseActivity;->access$2(Lcom/zhangling/danti15/BaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    .end local v3    # "result":I
    :pswitch_3
    iget-object v4, p0, Lcom/zhangling/danti15/BaseActivity$1;->this$0:Lcom/zhangling/danti15/BaseActivity;

    invoke-static {v4}, Lcom/zhangling/danti15/BaseActivity;->access$2(Lcom/zhangling/danti15/BaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    iget-object v4, p0, Lcom/zhangling/danti15/BaseActivity$1;->this$0:Lcom/zhangling/danti15/BaseActivity;

    invoke-static {v4}, Lcom/zhangling/danti15/BaseActivity;->access$2(Lcom/zhangling/danti15/BaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 224
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/zhangling/danti15/BaseActivity$1;->this$0:Lcom/zhangling/danti15/BaseActivity;

    invoke-static {v4}, Lcom/zhangling/danti15/BaseActivity;->access$3(Lcom/zhangling/danti15/BaseActivity;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/zhangling/danti15/BaseActivity$1;->this$0:Lcom/zhangling/danti15/BaseActivity;

    invoke-static {v5}, Lcom/zhangling/danti15/BaseActivity;->access$4(Lcom/zhangling/danti15/BaseActivity;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/zhangling/danti15/BaseActivity$1;->this$0:Lcom/zhangling/danti15/BaseActivity;

    invoke-virtual {v4, v2}, Lcom/zhangling/danti15/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 231
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "error"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "error":Ljava/lang/String;
    iget-object v4, p0, Lcom/zhangling/danti15/BaseActivity$1;->this$0:Lcom/zhangling/danti15/BaseActivity;

    invoke-static {v4}, Lcom/zhangling/danti15/BaseActivity;->access$3(Lcom/zhangling/danti15/BaseActivity;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
