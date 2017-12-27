.class final Lcom/zhangling/danti15/BaseAActivity$1;
.super Landroid/os/Handler;
.source "BaseAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangling/danti15/BaseAActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangling/danti15/BaseAActivity;


# direct methods
.method constructor <init>(Lcom/zhangling/danti15/BaseAActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    .line 175
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zhangling/danti15/BaseAActivity$1;)Lcom/zhangling/danti15/BaseAActivity;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v10, 0xd

    const/4 v7, 0x1

    const/4 v9, 0x0

    const-string v8, "\u901a\u77e5"

    .line 178
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 179
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 329
    :goto_0
    return-void

    .line 182
    :sswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v2, "in":Landroid/content/Intent;
    const-string v6, "beNotInstaled"

    invoke-static {}, Lcom/zhangling/danti15/BaseAActivity;->access$0()Z

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    iget-object v6, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    invoke-virtual {v6}, Lcom/zhangling/danti15/BaseAActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    iget-object v7, v7, Lcom/zhangling/danti15/BaseAActivity;->appClassName:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v6, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    invoke-virtual {v6, v2}, Lcom/zhangling/danti15/BaseAActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 191
    .end local v2    # "in":Landroid/content/Intent;
    :sswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/zhangling/danti15/BaseAActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 193
    const-string v6, "\u901a\u77e5"

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "\u5df2\u53d1\u73b0\u6709\u66f4\u65b0\u7248\u672c\u54e6\uff01"

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "\u95ea\u7535\u66f4\u65b0"

    new-instance v8, Lcom/zhangling/danti15/BaseAActivity$1$1;

    invoke-direct {v8, p0}, Lcom/zhangling/danti15/BaseAActivity$1$1;-><init>(Lcom/zhangling/danti15/BaseAActivity$1;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 201
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 207
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :sswitch_2
    iget-object v6, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    new-instance v7, Landroid/app/ProgressDialog;

    sget-object v8, Lcom/zhangling/danti15/BaseAActivity;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Lcom/zhangling/danti15/BaseAActivity;->pd:Landroid/app/ProgressDialog;

    .line 208
    iget-object v6, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    iget-object v6, v6, Lcom/zhangling/danti15/BaseAActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 209
    iget-object v6, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    iget-object v6, v6, Lcom/zhangling/danti15/BaseAActivity;->pd:Landroid/app/ProgressDialog;

    const-string v7, "\u6b63\u5728\u66f4\u65b0\u6570\u636e..."

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v6, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    iget-object v6, v6, Lcom/zhangling/danti15/BaseAActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 213
    :try_start_0
    iget-object v6, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    invoke-static {v6}, Lcom/zhangling/danti15/BaseAActivity;->access$2(Lcom/zhangling/danti15/BaseAActivity;)V

    .line 214
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/zhangling/danti15/BaseAActivity$1$2;

    invoke-direct {v7, p0}, Lcom/zhangling/danti15/BaseAActivity$1$2;-><init>(Lcom/zhangling/danti15/BaseAActivity$1;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 225
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    invoke-static {v6, v10}, Lcom/zhangling/danti15/BaseAActivity;->access$1(Lcom/zhangling/danti15/BaseAActivity;I)V

    goto/16 :goto_0

    .line 236
    .end local v1    # "e":Ljava/lang/Exception;
    :sswitch_3
    :try_start_1
    const-string v6, "install"

    invoke-static {v6}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V

    .line 237
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/data/data/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    invoke-virtual {v7}, Lcom/zhangling/danti15/BaseAActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/files/xxx.apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v4, "tf":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "f:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 240
    const-string v6, "exists and canRead"

    invoke-static {v6}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V

    .line 241
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 242
    .local v5, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 243
    .local v3, "it":Landroid/content/Intent;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 244
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 245
    const-string v6, "com.android.packageinstaller"

    const-string v7, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object v6, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    invoke-virtual {v6, v3}, Lcom/zhangling/danti15/BaseAActivity;->startActivity(Landroid/content/Intent;)V

    .line 247
    const-string v6, "install ok"

    invoke-static {v6}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V

    .line 248
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/zhangling/danti15/BaseAActivity;->access$3(Z)V

    .line 253
    .end local v3    # "it":Landroid/content/Intent;
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_1
    iget-object v6, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    iget-object v6, v6, Lcom/zhangling/danti15/BaseAActivity;->pd:Landroid/app/ProgressDialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 254
    iget-object v6, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    iget-object v6, v6, Lcom/zhangling/danti15/BaseAActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 255
    iget-object v6, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    iget-object v6, v6, Lcom/zhangling/danti15/BaseAActivity;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->cancel()V

    .line 256
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/zhangling/danti15/BaseAActivity$1$3;

    invoke-direct {v7, p0}, Lcom/zhangling/danti15/BaseAActivity$1$3;-><init>(Lcom/zhangling/danti15/BaseAActivity$1;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 268
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 270
    .end local v4    # "tf":Ljava/io/File;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 271
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    .line 272
    iget-object v6, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    invoke-static {v6, v10}, Lcom/zhangling/danti15/BaseAActivity;->access$1(Lcom/zhangling/danti15/BaseAActivity;I)V

    goto/16 :goto_0

    .line 250
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "tf":Ljava/io/File;
    :cond_0
    :try_start_2
    const-string v6, "install else"

    invoke-static {v6}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V

    .line 251
    iget-object v6, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    const/16 v7, 0xd

    invoke-static {v6, v7}, Lcom/zhangling/danti15/BaseAActivity;->access$1(Lcom/zhangling/danti15/BaseAActivity;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 278
    .end local v4    # "tf":Ljava/io/File;
    :sswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/zhangling/danti15/BaseAActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 279
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 280
    const-string v6, "\u901a\u77e5"

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "\u8ddf\u65b0\u5931\u8d25\uff0c\u4e0b\u6b21\u66f4\u65b0\uff01"

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "\u540c\u610f"

    new-instance v8, Lcom/zhangling/danti15/BaseAActivity$1$4;

    invoke-direct {v8, p0}, Lcom/zhangling/danti15/BaseAActivity$1$4;-><init>(Lcom/zhangling/danti15/BaseAActivity$1;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 291
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 297
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :sswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/zhangling/danti15/BaseAActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 298
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 299
    const-string v6, "\u901a\u77e5"

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "\u66f4\u65b0\u9700\u8981\u60a8\u91cd\u542f\u8be5\u7a0b\u5e8f"

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "\u91cd\u542f"

    new-instance v8, Lcom/zhangling/danti15/BaseAActivity$1$5;

    invoke-direct {v8, p0}, Lcom/zhangling/danti15/BaseAActivity$1$5;-><init>(Lcom/zhangling/danti15/BaseAActivity$1;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 316
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 322
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :sswitch_6
    :try_start_3
    iget-object v6, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    iget-object v6, v6, Lcom/zhangling/danti15/BaseAActivity;->intent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    iget-object v7, v7, Lcom/zhangling/danti15/BaseAActivity;->b_package:Ljava/lang/String;

    iget-object v8, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    iget-object v8, v8, Lcom/zhangling/danti15/BaseAActivity;->b_package_class:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    iget-object v6, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    iget-object v7, p0, Lcom/zhangling/danti15/BaseAActivity$1;->this$0:Lcom/zhangling/danti15/BaseAActivity;

    iget-object v7, v7, Lcom/zhangling/danti15/BaseAActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Lcom/zhangling/danti15/BaseAActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 324
    :catch_2
    move-exception v6

    goto/16 :goto_0

    .line 179
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_5
        0x64 -> :sswitch_6
    .end sparse-switch
.end method
