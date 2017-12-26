.class Lnet/youmi/android/t;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static final d:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "5047020c035e433d015b6641755941170d03"

    sput-object v0, Lnet/youmi/android/t;->a:Ljava/lang/String;

    const-string v0, "51440503525a433d515f67472551151b055f"

    sput-object v0, Lnet/youmi/android/t;->b:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/youmi/android/t;->d:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/youmi/android/t;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lnet/youmi/android/t;->a:Ljava/lang/String;

    sget-object v1, Lnet/youmi/android/t;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/youmi/android/t;->c:Ljava/lang/String;

    :cond_0
    sget-object v0, Lnet/youmi/android/t;->c:Ljava/lang/String;

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?da="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&src="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/youmi/android/t;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/StringBuilder;Landroid/app/Activity;Ljava/util/Date;)V
    .locals 21

    invoke-static/range {p1 .. p1}, Lnet/youmi/android/l;->a(Landroid/app/Activity;)Lnet/youmi/android/ak;

    move-result-object v3

    invoke-static {}, Lnet/youmi/android/n;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lnet/youmi/android/n;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lnet/youmi/android/cg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lnet/youmi/android/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lnet/youmi/android/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lnet/youmi/android/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lnet/youmi/android/e;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lnet/youmi/android/e;->e()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lnet/youmi/android/e;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "0"

    const-string v14, ""

    invoke-static {}, Lnet/youmi/android/e;->c()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p2 .. p2}, Lnet/youmi/android/t;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3}, Lnet/youmi/android/ak;->c()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Lnet/youmi/android/e;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lnet/youmi/android/h;->a()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lnet/youmi/android/h;->c()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v3}, Lnet/youmi/android/ak;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lnet/youmi/android/h;->b()Ljava/lang/String;

    move-result-object v19

    const-string v20, "aid"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "av"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "apn"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "bd"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "cid"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "cn"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "dd"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v10

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "dv"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v11

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ei"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "out"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pn"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v14

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "po"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v15

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "rt"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "sh"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "si"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "src"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sv"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sw"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ver"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/as;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
