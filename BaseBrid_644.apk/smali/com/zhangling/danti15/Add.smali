.class public Lcom/zhangling/danti15/Add;
.super Lcom/zhangling/danti15/BaseActivity;
.source "Add.java"


# static fields
.field public static add:Lcom/zhangling/danti15/Add;


# instance fields
.field button1:Landroid/widget/Button;

.field button2:Landroid/widget/Button;

.field index:I

.field textView:Landroid/widget/TextView;

.field textView1:Landroid/widget/TextView;

.field private tmp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/zhangling/danti15/Add;->add:Lcom/zhangling/danti15/Add;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/zhangling/danti15/BaseActivity;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/zhangling/danti15/Add;->button1:Landroid/widget/Button;

    .line 25
    iput-object v0, p0, Lcom/zhangling/danti15/Add;->button2:Landroid/widget/Button;

    .line 26
    iput-object v0, p0, Lcom/zhangling/danti15/Add;->textView:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/zhangling/danti15/Add;->textView1:Landroid/widget/TextView;

    .line 28
    iput v1, p0, Lcom/zhangling/danti15/Add;->index:I

    .line 29
    iput v1, p0, Lcom/zhangling/danti15/Add;->tmp:I

    .line 21
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/zhangling/danti15/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sput-object p0, Lcom/zhangling/danti15/Add;->add:Lcom/zhangling/danti15/Add;

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/zhangling/danti15/Add;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 38
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 39
    const-string v10, "index"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/zhangling/danti15/Add;->index:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    sget-object v10, Lcom/zhangling/danti15/Add;->sp:Landroid/content/SharedPreferences;

    sget-object v11, Lcom/zhangling/danti15/Add;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p0, v10, v11}, Lcom/zhangling/db/HistoryInfo;->init(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)Lcom/zhangling/db/HistoryInfo;

    move-result-object v1

    .line 46
    .local v1, "info":Lcom/zhangling/db/HistoryInfo;
    iget v10, p0, Lcom/zhangling/danti15/Add;->index:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/zhangling/db/HistoryInfo;->insertInto(Ljava/lang/String;)V

    .line 47
    const-string v10, "book_lastRead_id"

    iget v11, p0, Lcom/zhangling/danti15/Add;->index:I

    invoke-static {v10, v11}, Lcom/zhangling/danti15/Add;->saveData(Ljava/lang/String;I)V

    .line 48
    const-string v10, "book_lastRead_datetime"

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/zhangling/danti15/Add;->saveData(Ljava/lang/String;J)V

    .line 49
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .local v3, "layout":Landroid/widget/LinearLayout;
    const-class v10, Lcom/zhangling/danti15/R$string;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "listView_title_"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lcom/zhangling/danti15/Add;->index:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/zhangling/util/ReflectUtil;->getInt(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/zhangling/danti15/Add;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, "title":Ljava/lang/String;
    const-class v10, Lcom/zhangling/danti15/R$string;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "listView_add_"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lcom/zhangling/danti15/Add;->index:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/zhangling/util/ReflectUtil;->getInt(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/zhangling/danti15/Add;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 53
    .local v8, "title1":Ljava/lang/String;
    invoke-static {v7}, Lcom/zhangling/util/StringUtil;->unTihuan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/zhangling/danti15/Add;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    const v10, 0x7f020002

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 57
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v5, "param1":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/zhangling/danti15/Add;->textView1:Landroid/widget/TextView;

    .line 59
    iget-object v10, p0, Lcom/zhangling/danti15/Add;->textView1:Landroid/widget/TextView;

    const/high16 v11, 0x41b80000    # 23.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 60
    iget-object v10, p0, Lcom/zhangling/danti15/Add;->textView1:Landroid/widget/TextView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/zhangling/danti15/Add;->textView:Landroid/widget/TextView;

    .line 62
    iget-object v10, p0, Lcom/zhangling/danti15/Add;->textView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 63
    iget-object v10, p0, Lcom/zhangling/danti15/Add;->textView:Landroid/widget/TextView;

    const/high16 v11, 0x41980000    # 19.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 64
    iget-object v10, p0, Lcom/zhangling/danti15/Add;->textView1:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 65
    .local v9, "tp":Landroid/text/TextPaint;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 66
    iget-object v10, p0, Lcom/zhangling/danti15/Add;->textView1:Landroid/widget/TextView;

    const/high16 v11, -0x10000

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object v10, p0, Lcom/zhangling/danti15/Add;->textView:Landroid/widget/TextView;

    const/high16 v11, -0x1000000

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v10, p0, Lcom/zhangling/danti15/Add;->textView1:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/zhangling/util/StringUtil;->unTihuan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v10, p0, Lcom/zhangling/danti15/Add;->textView:Landroid/widget/TextView;

    invoke-static {v8}, Lcom/zhangling/util/StringUtil;->unTihuan(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v10, p0, Lcom/zhangling/danti15/Add;->textView1:Landroid/widget/TextView;

    invoke-virtual {v3, v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v10, p0, Lcom/zhangling/danti15/Add;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 102
    .local v4, "layout2":Landroid/widget/LinearLayout;
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 103
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 104
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v6, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 105
    .local v6, "param2":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/zhangling/danti15/Add;->button1:Landroid/widget/Button;

    .line 106
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/zhangling/danti15/Add;->button2:Landroid/widget/Button;

    .line 107
    iget-object v10, p0, Lcom/zhangling/danti15/Add;->button1:Landroid/widget/Button;

    const-string v11, "\u5f00\u59cb\u6d4b\u8bd5"

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v10, p0, Lcom/zhangling/danti15/Add;->button1:Landroid/widget/Button;

    const/16 v11, 0x64

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setWidth(I)V

    .line 109
    iget-object v10, p0, Lcom/zhangling/danti15/Add;->button2:Landroid/widget/Button;

    const-string v11, "\u8fd4\u56de"

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v10, p0, Lcom/zhangling/danti15/Add;->button2:Landroid/widget/Button;

    const/16 v11, 0x64

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setWidth(I)V

    .line 111
    iget-object v10, p0, Lcom/zhangling/danti15/Add;->button1:Landroid/widget/Button;

    invoke-virtual {v4, v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v10, p0, Lcom/zhangling/danti15/Add;->button2:Landroid/widget/Button;

    invoke-virtual {v4, v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    invoke-virtual {p0, v3}, Lcom/zhangling/danti15/Add;->setContentView(Landroid/view/View;)V

    .line 115
    iget-object v10, p0, Lcom/zhangling/danti15/Add;->button1:Landroid/widget/Button;

    new-instance v11, Lcom/zhangling/danti15/Add$1;

    invoke-direct {v11, p0}, Lcom/zhangling/danti15/Add$1;-><init>(Lcom/zhangling/danti15/Add;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v10, p0, Lcom/zhangling/danti15/Add;->button2:Landroid/widget/Button;

    new-instance v11, Lcom/zhangling/danti15/Add$2;

    invoke-direct {v11, p0}, Lcom/zhangling/danti15/Add$2;-><init>(Lcom/zhangling/danti15/Add;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void

    .line 40
    .end local v1    # "info":Lcom/zhangling/db/HistoryInfo;
    .end local v3    # "layout":Landroid/widget/LinearLayout;
    .end local v4    # "layout2":Landroid/widget/LinearLayout;
    .end local v5    # "param1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "param2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "title1":Ljava/lang/String;
    .end local v9    # "tp":Landroid/text/TextPaint;
    :catch_0
    move-exception v10

    move-object v0, v10

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method
