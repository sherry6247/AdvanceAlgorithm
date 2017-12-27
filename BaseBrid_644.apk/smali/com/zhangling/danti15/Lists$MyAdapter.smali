.class Lcom/zhangling/danti15/Lists$MyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangling/danti15/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangling/danti15/Lists;


# direct methods
.method public constructor <init>(Lcom/zhangling/danti15/Lists;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/zhangling/danti15/Lists$MyAdapter;->this$0:Lcom/zhangling/danti15/Lists;

    .line 217
    const v0, 0x7f030004

    const v1, 0x7f060002

    invoke-direct {p0, p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, -0x1

    const/high16 v8, -0x10000

    .line 222
    if-nez p2, :cond_0

    .line 224
    iget-object v5, p0, Lcom/zhangling/danti15/Lists$MyAdapter;->this$0:Lcom/zhangling/danti15/Lists;

    invoke-static {v5}, Lcom/zhangling/danti15/Lists;->access$1(Lcom/zhangling/danti15/Lists;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030004

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 227
    :cond_0
    const/high16 v5, 0x7f060000

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 228
    .local v0, "img":Landroid/widget/ImageView;
    const v5, 0x7f060002

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 229
    .local v4, "tv_title":Landroid/widget/TextView;
    const v5, 0x7f060003

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 230
    .local v3, "tv_text":Landroid/widget/TextView;
    const v5, 0x7f060004

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 232
    .local v1, "img1":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/zhangling/danti15/Lists$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 233
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "title"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const-string v5, "info"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    const v5, 0x7f020013

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    const v5, 0x7f020001

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    rem-int/lit8 v5, p1, 0x2

    if-nez v5, :cond_1

    .line 239
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    :goto_0
    return-object p2

    .line 244
    :cond_1
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
