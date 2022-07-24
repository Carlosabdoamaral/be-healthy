package main

import (
	"github.com/gin-gonic/gin"
	"net/http"
	"strconv"
)

// MODELS
type ClientModel struct {
	ID           int
	FirstName    string
	LastName     string
	FullName     string
	Birthdate    string
	Email        string
	StartDate    string
	LastVisit    string
	Cpf          string
	Payment      PaymentModel
	Train        TrainModel
	TrainHistory []TrainModel
}
type InstructorModel struct {
	ID        int
	FirstName string
	FullName  string
	LastName  string
	Birthdate string
	StartDate string
	Cpf       string
	Salary    float64
	Paid      bool
}
type TrainModel struct {
	ID        int
	Name      string
	Duration  float64
	CreatedBy InstructorModel
	Exercises []ExerciseModel
}
type ExerciseModel struct {
	ID                int
	Title             string
	Duration          float64
	Repetition        int
	Sets              int
	RecommendedWeight int
	MachineNumber     int
}
type PaymentModel struct {
	ID    int
	value float64
}

// DATA
var ClientData = []ClientModel{
	{
		ID:        0,
		FirstName: "Carlos",
		LastName:  "Amaral",
		FullName:  "Carlos Alberto Barcelos do Amaral",
		Birthdate: "00/00/0000",
		Email:     "email@gmail.com",
		StartDate: "03/02/2021",
		LastVisit: "11/07/2022",
		Cpf:       "000.000.000-00",
		Payment: PaymentModel{
			ID:    0,
			value: 200,
		},
		Train: TrainData[0],
	},

	{
		ID:        1,
		FirstName: "Ana",
		LastName:  "Exemplo",
		FullName:  "Ana Clara Exemplo",
		Birthdate: "00/00/0000",
		Email:     "email@gmail.com",
		StartDate: "24/01/2022",
		LastVisit: "10/04/2022",
		Cpf:       "000.000.000-00",
		Payment: PaymentModel{
			ID:    0,
			value: 200,
		},
		Train: TrainData[1],
	},
}
var InstructorData = []InstructorModel{
	{0, "João", "João Treinador Exemplo", "Exemplo", "00/00/0000", "00/00/0000", "000.000.000-00", 2500.90, false},
	{1, "Fulano", "Fulano Treinador Exemplo", "Exemplo", "00/00/0000", "00/00/0000", "000.000.000-00", 3500.90, false},
}
var TrainData = []TrainModel{
	{
		ID:        0,
		Name:      "Treino | Carlos Amaral",
		Duration:  49.5,
		CreatedBy: InstructorData[0],
		Exercises: []ExerciseModel{
			ExerciseData[0],
			ExerciseData[1],
		},
	},

	{
		ID:        1,
		Name:      "Treino | Ana Exemplo",
		Duration:  30,
		CreatedBy: InstructorData[1],
		Exercises: []ExerciseModel{
			ExerciseData[0],
		},
	},
}
var ExerciseData = []ExerciseModel{
	{0, "Flexão no solo", 10.0, 10, 3, 0, 0},
	{1, "Cadeira Extensora", 5.0, 13, 3, 30, 8},
}

func main() {
	router := gin.Default()
	router.GET("/client/all", getAllClients)
	router.GET("/client/:id", getClientByID)
	router.POST("/client/new", newClient)
	router.DELETE("/client/delete/:id", deleteClient)

	router.GET("/instructor/all", getAllInstructors)
	router.GET("/instructor/:id", getInstructorById)
	router.POST("/instructor/new", postInstructor)
	router.DELETE("/instructor/delete/:id", deleteInstructor)

	router.GET("/train/all", getAllTrains)
	//router.SetTrustedProxies([]string{"127.0.0.1"})
	err := router.Run(":8080")
	if err != nil {
		return
	}
}

// MARK: CONTROLLERS
func getAllClients(c *gin.Context) { c.IndentedJSON(http.StatusOK, ClientData) }
func getClientByID(c *gin.Context) {
	id := c.Param("id")

	for _, client := range ClientData {
		if strconv.Itoa(client.ID) == id {
			c.IndentedJSON(http.StatusOK, client)
		}
	}
}
func newClient(c *gin.Context) {
	var client ClientModel
	if err := c.Bind(&client); err != nil {
		return
	}

	ClientData = append(ClientData, client)
	c.IndentedJSON(http.StatusCreated, client)
}
func deleteClient(c *gin.Context) {
	id := c.Param("id")

	var newList []ClientModel

	for _, u := range ClientData {
		if strconv.Itoa(u.ID) != id {
			newList = append(newList, u)
		}
	}
	ClientData = newList

	c.IndentedJSON(http.StatusAccepted, ClientData)
}

func getAllInstructors(c *gin.Context) { c.IndentedJSON(http.StatusOK, InstructorData) }
func getInstructorById(c *gin.Context) {
	id := c.Param("id")
	var obj InstructorModel

	for _, o := range InstructorData {
		if strconv.Itoa(o.ID) == id {
			obj = o
		}
	}

	c.IndentedJSON(http.StatusFound, obj)
}
func postInstructor(c *gin.Context) {
	var instructor InstructorModel
	if err := c.Bind(&instructor); err != nil {
		return
	}

	InstructorData = append(InstructorData, instructor)
	c.IndentedJSON(http.StatusCreated, instructor)
}
func deleteInstructor(c *gin.Context) {
	id := c.Param("id")

	var newList []InstructorModel

	for _, u := range InstructorData {
		if strconv.Itoa(u.ID) != id {
			newList = append(newList, u)
		}
	}
	InstructorData = newList

	c.IndentedJSON(http.StatusAccepted, InstructorData)
}

func getAllTrains(c *gin.Context) { c.IndentedJSON(http.StatusOK, TrainData) }
