.class public final enum LDaemon/Service/ServerConnecter$httpState;
.super Ljava/lang/Enum;
.source "ServerConnecter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDaemon/Service/ServerConnecter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "httpState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LDaemon/Service/ServerConnecter$httpState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[LDaemon/Service/ServerConnecter$httpState;

.field public static final enum Overtime:LDaemon/Service/ServerConnecter$httpState;

.field public static final enum Specifications_error:LDaemon/Service/ServerConnecter$httpState;

.field public static final enum client_error:LDaemon/Service/ServerConnecter$httpState;

.field public static final enum error:LDaemon/Service/ServerConnecter$httpState;

.field public static final enum msg:LDaemon/Service/ServerConnecter$httpState;

.field public static final enum net_wap_error:LDaemon/Service/ServerConnecter$httpState;

.field public static final enum success:LDaemon/Service/ServerConnecter$httpState;

.field public static final enum user_error:LDaemon/Service/ServerConnecter$httpState;

.field public static final enum version_error:LDaemon/Service/ServerConnecter$httpState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, LDaemon/Service/ServerConnecter$httpState;

    const-string v1, "success"

    invoke-direct {v0, v1, v3}, LDaemon/Service/ServerConnecter$httpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDaemon/Service/ServerConnecter$httpState;->success:LDaemon/Service/ServerConnecter$httpState;

    new-instance v0, LDaemon/Service/ServerConnecter$httpState;

    const-string v1, "error"

    invoke-direct {v0, v1, v4}, LDaemon/Service/ServerConnecter$httpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDaemon/Service/ServerConnecter$httpState;->error:LDaemon/Service/ServerConnecter$httpState;

    new-instance v0, LDaemon/Service/ServerConnecter$httpState;

    const-string v1, "msg"

    invoke-direct {v0, v1, v5}, LDaemon/Service/ServerConnecter$httpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDaemon/Service/ServerConnecter$httpState;->msg:LDaemon/Service/ServerConnecter$httpState;

    new-instance v0, LDaemon/Service/ServerConnecter$httpState;

    const-string v1, "user_error"

    invoke-direct {v0, v1, v6}, LDaemon/Service/ServerConnecter$httpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDaemon/Service/ServerConnecter$httpState;->user_error:LDaemon/Service/ServerConnecter$httpState;

    new-instance v0, LDaemon/Service/ServerConnecter$httpState;

    const-string v1, "version_error"

    invoke-direct {v0, v1, v7}, LDaemon/Service/ServerConnecter$httpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDaemon/Service/ServerConnecter$httpState;->version_error:LDaemon/Service/ServerConnecter$httpState;

    new-instance v0, LDaemon/Service/ServerConnecter$httpState;

    const-string v1, "client_error"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LDaemon/Service/ServerConnecter$httpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDaemon/Service/ServerConnecter$httpState;->client_error:LDaemon/Service/ServerConnecter$httpState;

    new-instance v0, LDaemon/Service/ServerConnecter$httpState;

    const-string v1, "Specifications_error"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LDaemon/Service/ServerConnecter$httpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDaemon/Service/ServerConnecter$httpState;->Specifications_error:LDaemon/Service/ServerConnecter$httpState;

    new-instance v0, LDaemon/Service/ServerConnecter$httpState;

    const-string v1, "net_wap_error"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LDaemon/Service/ServerConnecter$httpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDaemon/Service/ServerConnecter$httpState;->net_wap_error:LDaemon/Service/ServerConnecter$httpState;

    new-instance v0, LDaemon/Service/ServerConnecter$httpState;

    const-string v1, "Overtime"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LDaemon/Service/ServerConnecter$httpState;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDaemon/Service/ServerConnecter$httpState;->Overtime:LDaemon/Service/ServerConnecter$httpState;

    .line 51
    const/16 v0, 0x9

    new-array v0, v0, [LDaemon/Service/ServerConnecter$httpState;

    sget-object v1, LDaemon/Service/ServerConnecter$httpState;->success:LDaemon/Service/ServerConnecter$httpState;

    aput-object v1, v0, v3

    sget-object v1, LDaemon/Service/ServerConnecter$httpState;->error:LDaemon/Service/ServerConnecter$httpState;

    aput-object v1, v0, v4

    sget-object v1, LDaemon/Service/ServerConnecter$httpState;->msg:LDaemon/Service/ServerConnecter$httpState;

    aput-object v1, v0, v5

    sget-object v1, LDaemon/Service/ServerConnecter$httpState;->user_error:LDaemon/Service/ServerConnecter$httpState;

    aput-object v1, v0, v6

    sget-object v1, LDaemon/Service/ServerConnecter$httpState;->version_error:LDaemon/Service/ServerConnecter$httpState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LDaemon/Service/ServerConnecter$httpState;->client_error:LDaemon/Service/ServerConnecter$httpState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LDaemon/Service/ServerConnecter$httpState;->Specifications_error:LDaemon/Service/ServerConnecter$httpState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LDaemon/Service/ServerConnecter$httpState;->net_wap_error:LDaemon/Service/ServerConnecter$httpState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, LDaemon/Service/ServerConnecter$httpState;->Overtime:LDaemon/Service/ServerConnecter$httpState;

    aput-object v2, v0, v1

    sput-object v0, LDaemon/Service/ServerConnecter$httpState;->ENUM$VALUES:[LDaemon/Service/ServerConnecter$httpState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LDaemon/Service/ServerConnecter$httpState;
    .locals 1

    .prologue
    .line 1
    const-class v0, LDaemon/Service/ServerConnecter$httpState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LDaemon/Service/ServerConnecter$httpState;

    return-object p0
.end method

.method public static values()[LDaemon/Service/ServerConnecter$httpState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, LDaemon/Service/ServerConnecter$httpState;->ENUM$VALUES:[LDaemon/Service/ServerConnecter$httpState;

    array-length v1, v0

    new-array v2, v1, [LDaemon/Service/ServerConnecter$httpState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
