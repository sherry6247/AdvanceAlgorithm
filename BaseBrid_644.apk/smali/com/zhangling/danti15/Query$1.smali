.class final Lcom/zhangling/danti15/Query$1;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangling/danti15/Query;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangling/danti15/Query;


# direct methods
.method constructor <init>(Lcom/zhangling/danti15/Query;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zhangling/danti15/Query$1;->this$0:Lcom/zhangling/danti15/Query;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zhangling/danti15/Query$1;->this$0:Lcom/zhangling/danti15/Query;

    invoke-virtual {v0}, Lcom/zhangling/danti15/Query;->initData()V

    .line 52
    return-void
.end method
