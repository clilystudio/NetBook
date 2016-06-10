.class final enum Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUTTON:Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

.field public static final enum CONTENT:Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

.field public static final enum TITLE:Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

.field private static final synthetic a:[Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;


# instance fields
.field private final mColour:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

    const-string v1, "TITLE"

    const-string v2, "#474747"

    invoke-direct {v0, v1, v3, v2}, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;->TITLE:Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

    new-instance v0, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

    const-string v1, "CONTENT"

    const-string v2, "#544f49"

    invoke-direct {v0, v1, v4, v2}, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;->CONTENT:Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

    new-instance v0, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

    const-string v1, "BUTTON"

    const-string v2, "#212121"

    invoke-direct {v0, v1, v5, v2}, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;->BUTTON:Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

    sget-object v1, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;->TITLE:Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

    aput-object v1, v0, v3

    sget-object v1, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;->CONTENT:Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

    aput-object v1, v0, v4

    sget-object v1, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;->BUTTON:Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

    aput-object v1, v0, v5

    sput-object v0, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;->a:[Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;->mColour:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$100(Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;->mColour:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;
    .locals 1

    .prologue
    .line 34
    const-class v0, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

    return-object v0
.end method

.method public static values()[Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;->a:[Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

    invoke-virtual {v0}, [Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/me/lewisdeane/ldialogs/CustomDialog$LightColours;

    return-object v0
.end method
