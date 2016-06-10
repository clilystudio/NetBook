.class final Lcom/mob/tools/gui/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public c:Lcom/mob/tools/gui/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/j",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public d:Lcom/mob/tools/gui/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/j",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private e:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/mob/tools/gui/j;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/gui/j;)J
    .locals 2

    iget-wide v0, p0, Lcom/mob/tools/gui/j;->e:J

    return-wide v0
.end method

.method static synthetic a(Lcom/mob/tools/gui/j;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mob/tools/gui/j;->e:J

    return-wide p1
.end method
