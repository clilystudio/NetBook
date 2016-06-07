.class final Lcom/koushikdutta/async/q;
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
        "Lcom/koushikdutta/async/p;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/koushikdutta/async/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lcom/koushikdutta/async/q;

    invoke-direct {v0}, Lcom/koushikdutta/async/q;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/q;->a:Lcom/koushikdutta/async/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 212
    check-cast p1, Lcom/koushikdutta/async/p;

    check-cast p2, Lcom/koushikdutta/async/p;

    .line 1219
    iget-wide v0, p1, Lcom/koushikdutta/async/p;->b:J

    iget-wide v2, p2, Lcom/koushikdutta/async/p;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1220
    const/4 v0, 0x0

    .line 1222
    :goto_0
    return v0

    .line 1221
    :cond_0
    iget-wide v0, p1, Lcom/koushikdutta/async/p;->b:J

    iget-wide v2, p2, Lcom/koushikdutta/async/p;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1222
    const/4 v0, 0x1

    goto :goto_0

    .line 1223
    :cond_1
    const/4 v0, -0x1

    .line 212
    goto :goto_0
.end method
