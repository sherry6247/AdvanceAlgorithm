.class public Lcom/zhangling/danti15/SelectRes;
.super Landroid/app/Activity;
.source "SelectRes.java"


# instance fields
.field data:[Ljava/lang/String;

.field index:I

.field res:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    iput v0, p0, Lcom/zhangling/danti15/SelectRes;->res:I

    .line 23
    iput v0, p0, Lcom/zhangling/danti15/SelectRes;->index:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangling/danti15/SelectRes;->data:[Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v12, -0x1

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/zhangling/danti15/SelectRes;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 31
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 32
    const-string v9, "res"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/zhangling/danti15/SelectRes;->res:I

    .line 33
    const-string v9, "index"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/zhangling/danti15/SelectRes;->index:I

    .line 34
    iget v9, p0, Lcom/zhangling/danti15/SelectRes;->res:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Integer;)V

    .line 35
    iget v9, p0, Lcom/zhangling/danti15/SelectRes;->index:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    .local v3, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 42
    const v9, 0x7f020002

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 44
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 45
    .local v1, "imageView":Landroid/widget/ImageView;
    const v9, 0x7f020011

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 48
    .local v6, "textView":Landroid/widget/TextView;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 49
    const/high16 v9, 0x41b80000    # 23.0f

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 50
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    .line 51
    .local v8, "tp":Landroid/text/TextPaint;
    invoke-virtual {v8, v10}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 52
    const/high16 v9, -0x10000

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    .local v7, "tmpLayout":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/16 v9, 0xc8

    invoke-direct {v4, v12, v9}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 57
    .local v4, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v7, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    new-instance v7, Landroid/widget/LinearLayout;

    .end local v7    # "tmpLayout":Landroid/widget/LinearLayout;
    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    .restart local v7    # "tmpLayout":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    .end local v4    # "params":Landroid/widget/AbsListView$LayoutParams;
    const/4 v9, -0x2

    invoke-direct {v4, v12, v9}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 63
    .restart local v4    # "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v7, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    const/16 v9, 0x11

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 65
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    const-class v9, Lcom/zhangling/danti15/R$string;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "listView_select_res_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/zhangling/danti15/SelectRes;->index:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/zhangling/util/ReflectUtil;->getInt(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/zhangling/danti15/SelectRes;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/zhangling/danti15/SelectRes;->data:[Ljava/lang/String;

    .line 69
    iget-object v9, p0, Lcom/zhangling/danti15/SelectRes;->data:[Ljava/lang/String;

    iget v10, p0, Lcom/zhangling/danti15/SelectRes;->res:I

    aget-object v9, v9, v10

    invoke-static {v9}, Lcom/zhangling/util/StringUtil;->unTihuan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "text":Ljava/lang/String;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    new-instance v9, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v9, v12, v12}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v9}, Lcom/zhangling/danti15/SelectRes;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-void

    .line 36
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "layout":Landroid/widget/LinearLayout;
    .end local v4    # "params":Landroid/widget/AbsListView$LayoutParams;
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "textView":Landroid/widget/TextView;
    .end local v7    # "tmpLayout":Landroid/widget/LinearLayout;
    .end local v8    # "tp":Landroid/text/TextPaint;
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method
