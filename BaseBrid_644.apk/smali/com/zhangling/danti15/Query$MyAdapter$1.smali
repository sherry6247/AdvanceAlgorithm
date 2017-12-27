.class final Lcom/zhangling/danti15/Query$MyAdapter$1;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangling/danti15/Query$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zhangling/danti15/Query$MyAdapter;


# direct methods
.method constructor <init>(Lcom/zhangling/danti15/Query$MyAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zhangling/danti15/Query$MyAdapter$1;->this$1:Lcom/zhangling/danti15/Query$MyAdapter;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "index":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/zhangling/danti15/Query$MyAdapter$1;->this$1:Lcom/zhangling/danti15/Query$MyAdapter;

    invoke-static {v4}, Lcom/zhangling/danti15/Query$MyAdapter;->access$0(Lcom/zhangling/danti15/Query$MyAdapter;)Lcom/zhangling/danti15/Query;

    move-result-object v4

    const-class v5, Lcom/zhangling/danti15/Add;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 172
    .local v1, "ind":I
    const-string v4, "index"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    iget-object v4, p0, Lcom/zhangling/danti15/Query$MyAdapter$1;->this$1:Lcom/zhangling/danti15/Query$MyAdapter;

    invoke-static {v4}, Lcom/zhangling/danti15/Query$MyAdapter;->access$0(Lcom/zhangling/danti15/Query$MyAdapter;)Lcom/zhangling/danti15/Query;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zhangling/danti15/Query;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v1    # "ind":I
    .end local v2    # "index":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto :goto_0
.end method
