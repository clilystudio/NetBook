.class final Lcom/squareup/okhttp/internal/http/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 25
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    .line 1028
    if-ne p1, p2, :cond_0

    .line 1029
    const/4 v0, 0x0

    .line 1033
    :goto_0
    return v0

    .line 1030
    :cond_0
    if-nez p1, :cond_1

    .line 1031
    const/4 v0, -0x1

    goto :goto_0

    .line 1032
    :cond_1
    if-nez p2, :cond_2

    .line 1033
    const/4 v0, 0x1

    goto :goto_0

    .line 1035
    :cond_2
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method
