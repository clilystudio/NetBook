.class public final Lorg/litepal/d/b/f;
.super Lorg/litepal/d/b/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/litepal/d/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 34
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 36
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 37
    const-string v1, "char"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "java.lang.Character"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    const-string v1, "TEXT"

    aput-object v1, v0, v2

    .line 46
    :goto_0
    return-object v0

    .line 41
    :cond_1
    const-string v1, "java.lang.String"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    const-string v1, "TEXT"

    aput-object v1, v0, v2

    goto :goto_0

    .line 46
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
