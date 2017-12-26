.class Lnet/youmi/android/cd;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "E2FDAA28C7344D2F9FAA4A0FEC1296AA"

    sput-object v0, Lnet/youmi/android/cd;->a:Ljava/lang/String;

    const-string v0, "startTime"

    sput-object v0, Lnet/youmi/android/cd;->b:Ljava/lang/String;

    const-string v0, "lastActiveTime"

    sput-object v0, Lnet/youmi/android/cd;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/util/Properties;
    .locals 1

    sget-object v0, Lnet/youmi/android/cd;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lnet/youmi/android/aa;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/app/Activity;)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Lnet/youmi/android/e;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-static {v0}, Lnet/youmi/android/e;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lnet/youmi/android/cd;->f(Landroid/app/Activity;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lnet/youmi/android/e;->b(I)V

    invoke-static {p0}, Lnet/youmi/android/cd;->d(Landroid/app/Activity;)V

    invoke-static {p0}, Lnet/youmi/android/cd;->e(Landroid/app/Activity;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method static b(Landroid/app/Activity;)Lnet/youmi/android/by;
    .locals 4

    :try_start_0
    invoke-static {p0}, Lnet/youmi/android/cd;->a(Landroid/content/Context;)Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lnet/youmi/android/by;

    invoke-direct {v1}, Lnet/youmi/android/by;-><init>()V

    sget-object v2, Lnet/youmi/android/cd;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lnet/youmi/android/aa;->a(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lnet/youmi/android/by;->a:I

    sget-object v2, Lnet/youmi/android/cd;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lnet/youmi/android/aa;->a(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lnet/youmi/android/by;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    new-instance v0, Lnet/youmi/android/by;

    invoke-direct {v0}, Lnet/youmi/android/by;-><init>()V

    goto :goto_0
.end method

.method private static c(Landroid/app/Activity;)Ljava/lang/String;
    .locals 8

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0}, Lnet/youmi/android/cd;->b(Landroid/app/Activity;)Lnet/youmi/android/by;

    move-result-object v1

    invoke-static {p0}, Lnet/youmi/android/m;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :goto_0
    :try_start_2
    const-string v4, "lbt="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/youmi/android/by;->a()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "let"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/youmi/android/by;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lon"

    invoke-static {v0, v1, v3}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lat"

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scn"

    invoke-static {}, Lnet/youmi/android/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, p0, v1}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Landroid/app/Activity;Ljava/util/Date;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lnet/youmi/android/t;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/n;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/util/Date;->getSeconds()I

    move-result v1

    rem-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/youmi/android/as;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-static {v0, v2, v1}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-static {v1}, Lnet/youmi/android/ag;->a(I)I

    move-result v1

    invoke-static {v0, v1}, Lnet/youmi/android/ar;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&k="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    move-object v2, v3

    move-object v3, v2

    move-object v2, v4

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v0, ""

    goto :goto_1

    :cond_0
    move-object v2, v4

    goto/16 :goto_0
.end method

.method private static d(Landroid/app/Activity;)V
    .locals 4

    const/16 v3, -0x3e7

    :try_start_0
    invoke-static {}, Lnet/youmi/android/cr;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lnet/youmi/android/cd;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/youmi/android/cg;->d(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "code"

    const/16 v2, -0x3e7

    invoke-static {v0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "Unable to connect to the server, please check your network configuration!"

    invoke-static {v0}, Lnet/youmi/android/g;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lnet/youmi/android/g;->a(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static e(Landroid/app/Activity;)Z
    .locals 5

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sget-object v2, Lnet/youmi/android/cd;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v2, Lnet/youmi/android/cd;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lnet/youmi/android/cd;->a:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lnet/youmi/android/aa;->a(Landroid/content/Context;Ljava/util/Properties;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(Landroid/app/Activity;)Z
    .locals 6

    :try_start_0
    invoke-static {p0}, Lnet/youmi/android/cd;->b(Landroid/app/Activity;)Lnet/youmi/android/by;

    move-result-object v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0}, Lnet/youmi/android/by;->a()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lnet/youmi/android/cd;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/youmi/android/by;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lnet/youmi/android/cd;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :goto_0
    sget-object v0, Lnet/youmi/android/cd;->a:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lnet/youmi/android/aa;->a(Landroid/content/Context;Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    sget-object v0, Lnet/youmi/android/cd;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lnet/youmi/android/cd;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method
