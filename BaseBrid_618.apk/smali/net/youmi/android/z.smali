.class Lnet/youmi/android/z;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Lnet/youmi/android/aw;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/util/ArrayList;

.field private l:Lnet/youmi/android/at;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/z;->a:Z

    return-void
.end method

.method static a(Lorg/json/JSONObject;)Lnet/youmi/android/z;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    if-nez p0, :cond_1

    move-object v0, v7

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Lnet/youmi/android/z;

    invoke-direct {v0}, Lnet/youmi/android/z;-><init>()V

    const-string v1, "adid"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lnet/youmi/android/z;->c:I

    const-string v1, "header"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/youmi/android/z;->d:Ljava/lang/String;

    const-string v1, "title"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/youmi/android/z;->e:Ljava/lang/String;

    const-string v1, "imgurl"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/youmi/android/z;->f:Ljava/lang/String;

    const-string v1, "content"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/youmi/android/z;->g:Ljava/lang/String;

    const-string v1, "contactways"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v8

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_9

    :cond_2
    const-string v1, "extracontactways"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, v0, Lnet/youmi/android/z;->b:Lnet/youmi/android/aw;

    if-nez v2, :cond_3

    new-instance v2, Lnet/youmi/android/aw;

    invoke-direct {v2}, Lnet/youmi/android/aw;-><init>()V

    iput-object v2, v0, Lnet/youmi/android/z;->b:Lnet/youmi/android/aw;

    :cond_3
    iget-object v2, v0, Lnet/youmi/android/z;->b:Lnet/youmi/android/aw;

    const-string v3, "email"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/youmi/android/aw;->c(Ljava/lang/String;)V

    iget-object v2, v0, Lnet/youmi/android/z;->b:Lnet/youmi/android/aw;

    const-string v3, "msn"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/youmi/android/aw;->a(Ljava/lang/String;)V

    iget-object v2, v0, Lnet/youmi/android/z;->b:Lnet/youmi/android/aw;

    const-string v3, "qq"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/youmi/android/aw;->b(Ljava/lang/String;)V

    iget-object v2, v0, Lnet/youmi/android/z;->b:Lnet/youmi/android/aw;

    const-string v3, "fax"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/youmi/android/aw;->d(Ljava/lang/String;)V

    :cond_4
    const-string v1, "locations"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_5

    move v2, v8

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_d

    :cond_5
    const-string v1, "downloads"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6

    move v2, v8

    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_10

    :cond_6
    const-string v1, "waps"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_7

    move v2, v8

    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_13

    :cond_7
    const-string v1, "search"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lnet/youmi/android/z;->l:Lnet/youmi/android/at;

    if-nez v2, :cond_8

    new-instance v2, Lnet/youmi/android/at;

    invoke-direct {v2}, Lnet/youmi/android/at;-><init>()V

    iput-object v2, v0, Lnet/youmi/android/z;->l:Lnet/youmi/android/at;

    :cond_8
    iget-object v2, v0, Lnet/youmi/android/z;->l:Lnet/youmi/android/at;

    const-string v3, "shid"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/youmi/android/at;->c(Ljava/lang/String;)V

    iget-object v2, v0, Lnet/youmi/android/z;->l:Lnet/youmi/android/at;

    const-string v3, "logourl"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/youmi/android/at;->b(Ljava/lang/String;)V

    iget-object v2, v0, Lnet/youmi/android/z;->l:Lnet/youmi/android/at;

    const-string v3, "url"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/youmi/android/at;->d(Ljava/lang/String;)V

    iget-object v2, v0, Lnet/youmi/android/z;->l:Lnet/youmi/android/at;

    const-string v3, "title"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/youmi/android/at;->a(Ljava/lang/String;)V

    iget-object v2, v0, Lnet/youmi/android/z;->l:Lnet/youmi/android/at;

    const-string v3, "keyword"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/youmi/android/at;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v7

    goto/16 :goto_0

    :cond_9
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lnet/youmi/android/bd;->a(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_a

    new-instance v4, Lnet/youmi/android/av;

    invoke-direct {v4}, Lnet/youmi/android/av;-><init>()V

    const-string v5, "num"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/youmi/android/av;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Lnet/youmi/android/av;->a()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_b
    const-string v5, "type"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lnet/youmi/android/av;->a(I)V

    const-string v5, "smsdf"

    const-string v6, ""

    invoke-static {v3, v5, v6}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lnet/youmi/android/av;->b(Ljava/lang/String;)V

    iget-object v3, v0, Lnet/youmi/android/z;->h:Ljava/util/ArrayList;

    if-nez v3, :cond_c

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lnet/youmi/android/z;->h:Ljava/util/ArrayList;

    :cond_c
    iget-object v3, v0, Lnet/youmi/android/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lnet/youmi/android/bd;->a(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_f

    new-instance v4, Lnet/youmi/android/be;

    invoke-direct {v4}, Lnet/youmi/android/be;-><init>()V

    const-string v5, "lcid"

    const-string v6, ""

    invoke-static {v3, v5, v6}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/youmi/android/be;->a(Ljava/lang/String;)V

    const-string v5, "lat"

    const-string v6, ""

    invoke-static {v3, v5, v6}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/youmi/android/be;->b(Ljava/lang/String;)V

    const-string v5, "lon"

    const-string v6, ""

    invoke-static {v3, v5, v6}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/youmi/android/be;->c(Ljava/lang/String;)V

    const-string v5, "title"

    const-string v6, ""

    invoke-static {v3, v5, v6}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/youmi/android/be;->d(Ljava/lang/String;)V

    const-string v5, "url"

    const-string v6, ""

    invoke-static {v3, v5, v6}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lnet/youmi/android/be;->e(Ljava/lang/String;)V

    iget-object v3, v0, Lnet/youmi/android/z;->j:Ljava/util/ArrayList;

    if-nez v3, :cond_e

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lnet/youmi/android/z;->j:Ljava/util/ArrayList;

    :cond_e
    iget-object v3, v0, Lnet/youmi/android/z;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_10
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lnet/youmi/android/bd;->a(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_12

    new-instance v4, Lnet/youmi/android/cj;

    invoke-direct {v4}, Lnet/youmi/android/cj;-><init>()V

    const-string v5, "len"

    const-string v6, ""

    invoke-static {v3, v5, v6}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/youmi/android/cj;->c(Ljava/lang/String;)V

    const-string v5, "dlid"

    const-string v6, ""

    invoke-static {v3, v5, v6}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/youmi/android/cj;->a(Ljava/lang/String;)V

    const-string v5, "title"

    const-string v6, ""

    invoke-static {v3, v5, v6}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/youmi/android/cj;->d(Ljava/lang/String;)V

    const-string v5, "url"

    const-string v6, ""

    invoke-static {v3, v5, v6}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lnet/youmi/android/cj;->b(Ljava/lang/String;)V

    iget-object v3, v0, Lnet/youmi/android/z;->i:Ljava/util/ArrayList;

    if-nez v3, :cond_11

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lnet/youmi/android/z;->i:Ljava/util/ArrayList;

    :cond_11
    iget-object v3, v0, Lnet/youmi/android/z;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_13
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lnet/youmi/android/bd;->a(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_15

    new-instance v4, Lnet/youmi/android/co;

    invoke-direct {v4}, Lnet/youmi/android/co;-><init>()V

    const-string v5, "wapid"

    const-string v6, ""

    invoke-static {v3, v5, v6}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/youmi/android/co;->c(Ljava/lang/String;)V

    const-string v5, "title"

    const-string v6, ""

    invoke-static {v3, v5, v6}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/youmi/android/co;->b(Ljava/lang/String;)V

    const-string v5, "url"

    const-string v6, ""

    invoke-static {v3, v5, v6}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lnet/youmi/android/co;->a(Ljava/lang/String;)V

    iget-object v3, v0, Lnet/youmi/android/z;->k:Ljava/util/ArrayList;

    if-nez v3, :cond_14

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lnet/youmi/android/z;->k:Ljava/util/ArrayList;

    :cond_14
    iget-object v3, v0, Lnet/youmi/android/z;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/z;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/z;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/z;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/z;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/z;->f:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/z;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/z;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method e()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/z;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method f()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/z;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method g()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/z;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method h()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/z;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method i()Lnet/youmi/android/aw;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/z;->b:Lnet/youmi/android/aw;

    return-object v0
.end method
