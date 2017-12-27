.class final Lcom/zhangling/danti15/Lists$7;
.super Ljava/lang/Object;
.source "Lists.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangling/danti15/Lists;->showPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangling/danti15/Lists;


# direct methods
.method constructor <init>(Lcom/zhangling/danti15/Lists;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zhangling/danti15/Lists$7;->this$0:Lcom/zhangling/danti15/Lists;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/zhangling/danti15/Lists$7;->this$0:Lcom/zhangling/danti15/Lists;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/zhangling/danti15/Lists;->showDialog(I)V

    .line 356
    return-void
.end method
