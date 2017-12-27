.class final Lcom/zhangling/danti15/BaseActivity$3;
.super Ljava/lang/Thread;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangling/danti15/BaseActivity;->turnTo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
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
    iput-object p1, p0, Lcom/zhangling/danti15/BaseActivity$3;->this$0:Lcom/zhangling/danti15/BaseActivity;

    .line 296
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/zhangling/danti15/BaseActivity$3;->this$0:Lcom/zhangling/danti15/BaseActivity;

    iget-object v2, p0, Lcom/zhangling/danti15/BaseActivity$3;->this$0:Lcom/zhangling/danti15/BaseActivity;

    invoke-static {v2}, Lcom/zhangling/danti15/BaseActivity;->access$6(Lcom/zhangling/danti15/BaseActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zhangling/danti15/BaseActivity;->down_file(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 316
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 307
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 308
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 310
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 311
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/zhangling/danti15/BaseActivity$3;->this$0:Lcom/zhangling/danti15/BaseActivity;

    invoke-static {v1}, Lcom/zhangling/danti15/BaseActivity;->access$2(Lcom/zhangling/danti15/BaseActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 313
    iget-object v1, p0, Lcom/zhangling/danti15/BaseActivity$3;->this$0:Lcom/zhangling/danti15/BaseActivity;

    invoke-static {v1}, Lcom/zhangling/danti15/BaseActivity;->access$3(Lcom/zhangling/danti15/BaseActivity;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bfb\u53d6\u5931\u8d25,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
