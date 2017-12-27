.class public Lcom/zhangling/danti15/Select;
.super Lcom/zhangling/danti15/BaseActivity;
.source "Select.java"


# static fields
.field private static final GENRES:[Ljava/lang/String;

.field private static handler:Landroid/os/Handler;

.field public static select:Lcom/zhangling/danti15/Select;


# instance fields
.field al:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field al_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field index:I

.field listView:Landroid/widget/ListView;

.field private progressBar:Landroid/widget/ProgressBar;

.field res:I

.field private resultView:Landroid/widget/TextView;

.field textView:Landroid/widget/TextView;

.field private tmp:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/zhangling/danti15/Select;->select:Lcom/zhangling/danti15/Select;

    .line 162
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u662f"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u5426"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zhangling/danti15/Select;->GENRES:[Ljava/lang/String;

    .line 199
    new-instance v0, Lcom/zhangling/danti15/Select$1;

    invoke-direct {v0}, Lcom/zhangling/danti15/Select$1;-><init>()V

    sput-object v0, Lcom/zhangling/danti15/Select;->handler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/zhangling/danti15/BaseActivity;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/zhangling/danti15/Select;->listView:Landroid/widget/ListView;

    .line 42
    iput-object v1, p0, Lcom/zhangling/danti15/Select;->textView:Landroid/widget/TextView;

    .line 44
    iput v0, p0, Lcom/zhangling/danti15/Select;->index:I

    .line 45
    iput v0, p0, Lcom/zhangling/danti15/Select;->res:I

    .line 46
    iput v0, p0, Lcom/zhangling/danti15/Select;->tmp:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangling/danti15/Select;->al:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangling/danti15/Select;->al_data:Ljava/util/List;

    .line 50
    iput-object v1, p0, Lcom/zhangling/danti15/Select;->progressBar:Landroid/widget/ProgressBar;

    .line 51
    iput-object v1, p0, Lcom/zhangling/danti15/Select;->resultView:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/zhangling/danti15/Select;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/zhangling/danti15/Select;->tmp:I

    return v0
.end method

.method static synthetic access$1(Lcom/zhangling/danti15/Select;I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/zhangling/danti15/Select;->tmp:I

    return-void
.end method

.method static synthetic access$2(Lcom/zhangling/danti15/Select;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/zhangling/danti15/Select;->loadData()V

    return-void
.end method

.method static synthetic access$3(Lcom/zhangling/danti15/Select;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/zhangling/danti15/Select;->gotoRes()V

    return-void
.end method

.method private gotoRes()V
    .locals 4

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/zhangling/danti15/Select;->select:Lcom/zhangling/danti15/Select;

    const-class v3, Lcom/zhangling/danti15/SelectRes;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 187
    .local v1, "tmp":I
    sget-object v2, Lcom/zhangling/danti15/Select;->select:Lcom/zhangling/danti15/Select;

    iget v2, v2, Lcom/zhangling/danti15/Select;->res:I

    if-eqz v2, :cond_0

    .line 188
    sget-object v2, Lcom/zhangling/danti15/Select;->select:Lcom/zhangling/danti15/Select;

    iget-object v2, v2, Lcom/zhangling/danti15/Select;->al_data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lcom/zhangling/danti15/Select;->select:Lcom/zhangling/danti15/Select;

    iget v3, v3, Lcom/zhangling/danti15/Select;->res:I

    if-ne v2, v3, :cond_1

    .line 189
    const/4 v1, 0x1

    .line 193
    :cond_0
    :goto_0
    const-string v2, "res"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const-string v2, "index"

    sget-object v3, Lcom/zhangling/danti15/Select;->select:Lcom/zhangling/danti15/Select;

    iget v3, v3, Lcom/zhangling/danti15/Select;->index:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    sget-object v2, Lcom/zhangling/danti15/Select;->select:Lcom/zhangling/danti15/Select;

    invoke-virtual {v2, v0}, Lcom/zhangling/danti15/Select;->startActivity(Landroid/content/Intent;)V

    .line 196
    sget-object v2, Lcom/zhangling/danti15/Select;->select:Lcom/zhangling/danti15/Select;

    invoke-virtual {v2}, Lcom/zhangling/danti15/Select;->finish()V

    .line 197
    return-void

    .line 191
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private loadData()V
    .locals 5

    .prologue
    .line 166
    iget v2, p0, Lcom/zhangling/danti15/Select;->tmp:I

    iget-object v3, p0, Lcom/zhangling/danti15/Select;->al_data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 181
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/zhangling/danti15/Select;->al_data:Ljava/util/List;

    iget v3, p0, Lcom/zhangling/danti15/Select;->tmp:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 169
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/zhangling/danti15/Select;->textView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/zhangling/util/StringUtil;->unTihuan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    new-instance v0, Lcom/zhangling/danti15/Select$3;

    const v2, 0x109000f

    sget-object v3, Lcom/zhangling/danti15/Select;->GENRES:[Ljava/lang/String;

    invoke-direct {v0, p0, p0, v2, v3}, Lcom/zhangling/danti15/Select$3;-><init>(Lcom/zhangling/danti15/Select;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 178
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget-object v2, p0, Lcom/zhangling/danti15/Select;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    iget-object v2, p0, Lcom/zhangling/danti15/Select;->progressBar:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/zhangling/danti15/Select;->tmp:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 180
    iget-object v2, p0, Lcom/zhangling/danti15/Select;->resultView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5f53\u524d\u8fdb\u5ea6\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/zhangling/danti15/Select;->tmp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/zhangling/danti15/Select;->select:Lcom/zhangling/danti15/Select;

    iget-object v4, v4, Lcom/zhangling/danti15/Select;->al_data:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static sendMsg(I)V
    .locals 2
    .param p0, "flag"    # I

    .prologue
    .line 214
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 215
    .local v0, "msg":Landroid/os/Message;
    iput p0, v0, Landroid/os/Message;->what:I

    .line 216
    sget-object v1, Lcom/zhangling/danti15/Select;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 217
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/zhangling/danti15/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sput-object p0, Lcom/zhangling/danti15/Select;->select:Lcom/zhangling/danti15/Select;

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/zhangling/danti15/Select;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 60
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 61
    const-string v10, "index"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/zhangling/danti15/Select;->index:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    new-instance v10, Landroid/widget/ListView;

    invoke-direct {v10, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/zhangling/danti15/Select;->listView:Landroid/widget/ListView;

    .line 75
    invoke-virtual {p0}, Lcom/zhangling/danti15/Select;->wakeLockOn()V

    .line 76
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    .local v4, "layout":Landroid/widget/LinearLayout;
    const-class v10, Lcom/zhangling/danti15/R$string;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "listView_title_"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lcom/zhangling/danti15/Select;->index:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/zhangling/util/ReflectUtil;->getInt(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/zhangling/danti15/Select;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "title":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/zhangling/danti15/Select;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 81
    const v10, 0x7f020002

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 83
    iget-object v10, p0, Lcom/zhangling/danti15/Select;->listView:Landroid/widget/ListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 84
    iget-object v10, p0, Lcom/zhangling/danti15/Select;->listView:Landroid/widget/ListView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 85
    iget-object v10, p0, Lcom/zhangling/danti15/Select;->listView:Landroid/widget/ListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 87
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/zhangling/danti15/Select;->textView:Landroid/widget/TextView;

    .line 88
    iget-object v10, p0, Lcom/zhangling/danti15/Select;->textView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 89
    iget-object v10, p0, Lcom/zhangling/danti15/Select;->textView:Landroid/widget/TextView;

    const/high16 v11, 0x41b80000    # 23.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    iget-object v10, p0, Lcom/zhangling/danti15/Select;->textView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 91
    .local v9, "tp":Landroid/text/TextPaint;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 92
    iget-object v10, p0, Lcom/zhangling/danti15/Select;->textView:Landroid/widget/TextView;

    const/high16 v11, -0x10000

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    const-class v10, Lcom/zhangling/danti15/R$string;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "listView_content_"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lcom/zhangling/danti15/Select;->index:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/zhangling/util/ReflectUtil;->getInt(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/zhangling/danti15/Select;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "data":[Ljava/lang/String;
    iget-object v10, p0, Lcom/zhangling/danti15/Select;->al_data:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 96
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v10, v0

    if-lt v2, v10, :cond_1

    .line 101
    .end local v2    # "i":I
    :cond_0
    new-instance v10, Landroid/widget/ProgressBar;

    const/4 v11, 0x0

    const v12, 0x1010078

    invoke-direct {v10, p0, v11, v12}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v10, p0, Lcom/zhangling/danti15/Select;->progressBar:Landroid/widget/ProgressBar;

    .line 102
    iget-object v10, p0, Lcom/zhangling/danti15/Select;->progressBar:Landroid/widget/ProgressBar;

    array-length v11, v0

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 104
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/zhangling/danti15/Select;->resultView:Landroid/widget/TextView;

    .line 105
    iget-object v10, p0, Lcom/zhangling/danti15/Select;->resultView:Landroid/widget/TextView;

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 106
    iget-object v10, p0, Lcom/zhangling/danti15/Select;->resultView:Landroid/widget/TextView;

    const/high16 v11, -0x1000000

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v10, p0, Lcom/zhangling/danti15/Select;->resultView:Landroid/widget/TextView;

    const/high16 v11, 0x41b80000    # 23.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 109
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v5, v10, v11}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 111
    .local v5, "lp":Landroid/widget/AbsListView$LayoutParams;
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 112
    .local v8, "tmpLayout":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v6, v10, v11}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 113
    .local v6, "params":Landroid/widget/AbsListView$LayoutParams;
    iget-object v10, p0, Lcom/zhangling/danti15/Select;->textView:Landroid/widget/TextView;

    invoke-virtual {v8, v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v10, p0, Lcom/zhangling/danti15/Select;->textView:Landroid/widget/TextView;

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 115
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    new-instance v8, Landroid/widget/LinearLayout;

    .end local v8    # "tmpLayout":Landroid/widget/LinearLayout;
    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 119
    .restart local v8    # "tmpLayout":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    .end local v6    # "params":Landroid/widget/AbsListView$LayoutParams;
    const/4 v10, -0x1

    const/16 v11, 0xe6

    invoke-direct {v6, v10, v11}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 120
    .restart local v6    # "params":Landroid/widget/AbsListView$LayoutParams;
    iget-object v10, p0, Lcom/zhangling/danti15/Select;->listView:Landroid/widget/ListView;

    invoke-virtual {v8, v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    new-instance v8, Landroid/widget/LinearLayout;

    .end local v8    # "tmpLayout":Landroid/widget/LinearLayout;
    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 125
    .restart local v8    # "tmpLayout":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    .end local v6    # "params":Landroid/widget/AbsListView$LayoutParams;
    const/4 v10, -0x1

    const/16 v11, 0x1e

    invoke-direct {v6, v10, v11}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 126
    .restart local v6    # "params":Landroid/widget/AbsListView$LayoutParams;
    iget-object v10, p0, Lcom/zhangling/danti15/Select;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    iget-object v10, p0, Lcom/zhangling/danti15/Select;->resultView:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    invoke-virtual {p0, v4, v5}, Lcom/zhangling/danti15/Select;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v10, p0, Lcom/zhangling/danti15/Select;->listView:Landroid/widget/ListView;

    new-instance v11, Lcom/zhangling/danti15/Select$2;

    invoke-direct {v11, p0}, Lcom/zhangling/danti15/Select$2;-><init>(Lcom/zhangling/danti15/Select;)V

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 159
    invoke-direct {p0}, Lcom/zhangling/danti15/Select;->loadData()V

    .line 160
    return-void

    .line 62
    .end local v0    # "data":[Ljava/lang/String;
    .end local v4    # "layout":Landroid/widget/LinearLayout;
    .end local v5    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v6    # "params":Landroid/widget/AbsListView$LayoutParams;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "tmpLayout":Landroid/widget/LinearLayout;
    .end local v9    # "tp":Landroid/text/TextPaint;
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "data":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "layout":Landroid/widget/LinearLayout;
    .restart local v7    # "title":Ljava/lang/String;
    .restart local v9    # "tp":Landroid/text/TextPaint;
    :cond_1
    const-string v10, ""

    aget-object v11, v0, v2

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 98
    iget-object v10, p0, Lcom/zhangling/danti15/Select;->al_data:Ljava/util/List;

    aget-object v11, v0, v2

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method
