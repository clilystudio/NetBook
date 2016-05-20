.class public final Lcom/ushaqi/zhuishushenqi/util/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/Q;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;

    invoke-direct {v0, p0, p1}, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v1, Lcom/ushaqi/zhuishushenqi/util/Q;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 61
    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    goto :goto_0
.end method

.method public static a()Lcom/ushaqi/zhuishushenqi/util/Q;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/Q;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/util/Q;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;

    invoke-direct {v0, p0, p1}, Lcom/ushaqi/zhuishushenqi/model/ReaderChapterIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/ushaqi/zhuishushenqi/util/Q;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    sget-object v1, Lcom/ushaqi/zhuishushenqi/util/Q;->a:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
