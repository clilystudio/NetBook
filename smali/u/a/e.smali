.class public abstract Lu/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Ljava/lang/String;

.field protected static b:Ljava/lang/String;


# instance fields
.field protected c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "POST"

    sput-object v0, Lu/a/e;->a:Ljava/lang/String;

    .line 26
    const-string v0, "GET"

    sput-object v0, Lu/a/e;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lu/a/e;->c:Ljava/lang/String;

    .line 60
    return-void
.end method

.method protected static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lu/a/e;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abstract a()Lorg/json/JSONObject;
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lu/a/e;->c:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method