.class Lcom/zhangling/danti15/Query$MyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangling/danti15/Query;
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
.field final synthetic this$0:Lcom/zhangling/danti15/Query;


# direct methods
.method public constructor <init>(Lcom/zhangling/danti15/Query;Landroid/content/Context;Ljava/util/List;)V
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
    .line 123
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/zhangling/danti15/Query$MyAdapter;->this$0:Lcom/zhangling/danti15/Query;

    .line 122
    const v0, 0x7f030004

    const v1, 0x7f060002

    invoke-direct {p0, p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method static synthetic access$0(Lcom/zhangling/danti15/Query$MyAdapter;)Lcom/zhangling/danti15/Query;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zhangling/danti15/Query$MyAdapter;->this$0:Lcom/zhangling/danti15/Query;

    return-object v0
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

    .line 127
    if-nez p2, :cond_0

    .line 129
    iget-object v5, p0, Lcom/zhangling/danti15/Query$MyAdapter;->this$0:Lcom/zhangling/danti15/Query;

    invoke-static {v5}, Lcom/zhangling/danti15/Query;->access$0(Lcom/zhangling/danti15/Query;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030004

    .line 130
    const/4 v7, 0x0

    .line 129
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 135
    :cond_0
    const/high16 v5, 0x7f060000

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    check-cast v0, Landroid/widget/ImageView;

    .line 137
    .local v0, "img":Landroid/widget/ImageView;
    const v5, 0x7f060002

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 136
    check-cast v4, Landroid/widget/TextView;

    .line 139
    .local v4, "tv_title":Landroid/widget/TextView;
    const v5, 0x7f060003

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 138
    check-cast v3, Landroid/widget/TextView;

    .line 141
    .local v3, "tv_text":Landroid/widget/TextView;
    const v5, 0x7f060004

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 140
    check-cast v1, Landroid/widget/ImageView;

    .line 143
    .local v1, "img1":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/zhangling/danti15/Query$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 144
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "title"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const-string v5, "info"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const v5, 0x7f020013

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    const v5, 0x7f020001

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    rem-int/lit8 v5, p1, 0x2

    if-nez v5, :cond_1

    .line 150
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    :goto_0
    const-string v5, "index"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 161
    new-instance v5, Lcom/zhangling/danti15/Query$MyAdapter$1;

    invoke-direct {v5, p0}, Lcom/zhangling/danti15/Query$MyAdapter$1;-><init>(Lcom/zhangling/danti15/Query$MyAdapter;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-object p2

    .line 155
    :cond_1
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
