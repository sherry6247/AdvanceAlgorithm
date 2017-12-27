.class final Lcom/zhangling/danti15/Lists$8;
.super Ljava/lang/Object;
.source "Lists.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangling/danti15/Lists;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/zhangling/danti15/Lists$8;->this$0:Lcom/zhangling/danti15/Lists;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lcom/zhangling/danti15/Lists$8;->this$0:Lcom/zhangling/danti15/Lists;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/zhangling/danti15/Lists;->access$5(Lcom/zhangling/danti15/Lists;I)V

    .line 406
    iget-object v0, p0, Lcom/zhangling/danti15/Lists$8;->this$0:Lcom/zhangling/danti15/Lists;

    invoke-virtual {v0}, Lcom/zhangling/danti15/Lists;->initData()V

    .line 407
    return-void
.end method
