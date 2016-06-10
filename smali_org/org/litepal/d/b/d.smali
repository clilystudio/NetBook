.class public final Lorg/litepal/d/b/d;
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
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 36
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 37
    const-string v1, "int"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "java.lang.Integer"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    const-string v1, "INTEGER"

    aput-object v1, v0, v2

    .line 50
    :goto_0
    return-object v0

    .line 41
    :cond_1
    const-string v1, "long"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "java.lang.Long"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    :cond_2
    const-string v1, "INTEGER"

    aput-object v1, v0, v2

    goto :goto_0

    .line 45
    :cond_3
    const-string v1, "short"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "java.lang.Short"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 46
    :cond_4
    const-string v1, "INTEGER"

    aput-object v1, v0, v2

    goto :goto_0

    .line 50
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
