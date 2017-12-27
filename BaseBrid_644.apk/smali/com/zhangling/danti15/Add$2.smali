.class final Lcom/zhangling/danti15/Add$2;
.super Ljava/lang/Object;
.source "Add.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangling/danti15/Add;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangling/danti15/Add;


# direct methods
.method constructor <init>(Lcom/zhangling/danti15/Add;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zhangling/danti15/Add$2;->this$0:Lcom/zhangling/danti15/Add;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    sget-object v0, Lcom/zhangling/danti15/Add;->add:Lcom/zhangling/danti15/Add;

    invoke-virtual {v0}, Lcom/zhangling/danti15/Add;->finish()V

    .line 141
    return-void
.end method
